define bash::profile(
  $source,
  $destination = '/root/.bash_profile',
  $uid = root,
  $gid = 0
) {
  file{$name:
    path => $destination,
    owner => $uid, group => $gid, mode => 600,
    source => [
      "puppet://$server/modules/site-bash/$fqdn/$source",
      "puppet://$server/modules/site-bash/$source",
      "puppet://$server/modules/bash/$source",
      "puppet://$server/modules/bash/$source",
    ],
  }
}
