
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {int mnt_authcache_ttl; int mnt_kern_flag; } ;


 int MNTK_AUTH_CACHE_TTL ;
 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
vfs_setauthcache_ttl(mount_t mp, int ttl)
{
 mount_lock(mp);
 mp->mnt_kern_flag |= MNTK_AUTH_CACHE_TTL;
 mp->mnt_authcache_ttl = ttl;
 mount_unlock(mp);
}
