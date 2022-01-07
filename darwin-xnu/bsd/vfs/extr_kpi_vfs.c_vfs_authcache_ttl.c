
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_kern_flag; int mnt_authcache_ttl; } ;


 int CACHED_RIGHT_INFINITE_TTL ;
 int MNTK_AUTH_CACHE_TTL ;
 int MNTK_AUTH_OPAQUE ;

int
vfs_authcache_ttl(mount_t mp)
{
        if ( (mp->mnt_kern_flag & (MNTK_AUTH_OPAQUE | MNTK_AUTH_CACHE_TTL)) )
         return (mp->mnt_authcache_ttl);
 else
         return (CACHED_RIGHT_INFINITE_TTL);
}
