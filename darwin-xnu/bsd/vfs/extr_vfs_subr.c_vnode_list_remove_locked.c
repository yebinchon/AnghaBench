
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_8__ {int v_listflag; } ;


 int VLIST_ASYNC_WORK ;
 int VLIST_DEAD ;
 int VLIST_RAGE ;
 scalar_t__ VONLIST (TYPE_1__*) ;
 int VREMASYNC_WORK (char*,TYPE_1__*) ;
 int VREMDEAD (char*,TYPE_1__*) ;
 int VREMFREE (char*,TYPE_1__*) ;
 int VREMRAGE (char*,TYPE_1__*) ;

__attribute__((used)) static void
vnode_list_remove_locked(vnode_t vp)
{
 if (VONLIST(vp)) {




         if (vp->v_listflag & VLIST_RAGE)
          VREMRAGE("vnode_list_remove", vp);
  else if (vp->v_listflag & VLIST_DEAD)
          VREMDEAD("vnode_list_remove", vp);
  else if (vp->v_listflag & VLIST_ASYNC_WORK)
          VREMASYNC_WORK("vnode_list_remove", vp);
  else
          VREMFREE("vnode_list_remove", vp);
 }
}
