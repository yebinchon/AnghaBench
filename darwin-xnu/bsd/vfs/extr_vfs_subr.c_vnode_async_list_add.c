
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {int v_lflag; int v_listflag; } ;


 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int VLIST_ASYNC_WORK ;
 int VL_DEAD ;
 int VL_TERMINATE ;
 scalar_t__ VONLIST (TYPE_1__*) ;
 int async_work_vnodes ;
 int panic (char*,TYPE_1__*) ;
 int v_freelist ;
 int vnode_async_work_list ;
 int vnode_list_lock () ;
 int vnode_list_unlock () ;
 int wakeup (int *) ;

__attribute__((used)) static void
vnode_async_list_add(vnode_t vp)
{
 vnode_list_lock();

 if (VONLIST(vp) || (vp->v_lflag & (VL_TERMINATE|VL_DEAD)))
  panic("vnode_async_list_add: %p is in wrong state", vp);

 TAILQ_INSERT_HEAD(&vnode_async_work_list, vp, v_freelist);
 vp->v_listflag |= VLIST_ASYNC_WORK;

 async_work_vnodes++;

 vnode_list_unlock();

 wakeup(&vnode_async_work_list);

}
