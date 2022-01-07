
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int KAUTH_INVALIDATE_CACHED_RIGHTS ;
 int vnode_uncache_authorized_action (int ,int ) ;

void vnode_uncache_credentials(vnode_t vp)
{
        vnode_uncache_authorized_action(vp, KAUTH_INVALIDATE_CACHED_RIGHTS);
}
