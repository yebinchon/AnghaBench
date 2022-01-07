
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_lock; } ;


 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ VONLIST (TYPE_1__*) ;
 int lck_mtx_assert (int *,int ) ;
 int vnode_list_lock () ;
 int vnode_list_remove_locked (TYPE_1__*) ;
 int vnode_list_unlock () ;

__attribute__((used)) static void
vnode_list_remove(vnode_t vp)
{
 if (VONLIST(vp)) {
         vnode_list_lock();
  vnode_list_remove_locked(vp);

  vnode_list_unlock();
 }
}
