
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {scalar_t__ v_name; } ;


 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;
 int strlen (scalar_t__) ;
 char* vfs_addname (scalar_t__,int ,int ,int ) ;

const char *
vnode_getname(vnode_t vp)
{
        const char *name = ((void*)0);

 NAME_CACHE_LOCK_SHARED();

 if (vp->v_name)
         name = vfs_addname(vp->v_name, strlen(vp->v_name), 0, 0);
 NAME_CACHE_UNLOCK();

 return (name);
}
