
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {scalar_t__ p_textvp; } ;


 scalar_t__ NULLVP ;
 scalar_t__ vnode_getwithref (scalar_t__) ;

vnode_t
proc_getexecutablevnode(proc_t p)
{
 vnode_t tvp = p->p_textvp;

 if ( tvp != NULLVP) {
  if (vnode_getwithref(tvp) == 0) {
   return tvp;
  }
 }

 return NULLVP;
}
