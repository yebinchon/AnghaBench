
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {int v_id; struct TYPE_6__* v_parent; } ;


 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;
 TYPE_1__* NULLVP ;
 scalar_t__ vnode_getwithvid (TYPE_1__*,int) ;

vnode_t
vnode_getparent(vnode_t vp)
{
        vnode_t pvp = NULLVP;
 int pvid;

 NAME_CACHE_LOCK_SHARED();







 if ( (pvp = vp->v_parent) != NULLVP ) {
         pvid = pvp->v_id;

  NAME_CACHE_UNLOCK();

  if (vnode_getwithvid(pvp, pvid) != 0)
          pvp = ((void*)0);
 } else
         NAME_CACHE_UNLOCK();
 return (pvp);
}
