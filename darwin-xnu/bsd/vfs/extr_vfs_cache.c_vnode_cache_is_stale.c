
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ v_cred_timestamp; TYPE_1__* v_mount; } ;
struct TYPE_4__ {scalar_t__ mnt_authcache_ttl; } ;


 int FALSE ;
 int TRUE ;
 int microuptime (struct timeval*) ;

boolean_t vnode_cache_is_stale(vnode_t vp)
{
 struct timeval tv;
 boolean_t retval;

 microuptime(&tv);

 if ((tv.tv_sec - vp->v_cred_timestamp) > vp->v_mount->mnt_authcache_ttl)
         retval = TRUE;
 else
         retval = FALSE;

 return retval;
}
