
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_incomp; int so_flags1; TYPE_1__* so_proto; } ;
typedef int lck_mtx_t ;
typedef int caddr_t ;
struct TYPE_2__ {int * (* pr_getlock ) (struct socket*,int ) ;} ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int SOF1_ACCEPT_LIST_HELD ;
 int * stub1 (struct socket*,int ) ;
 int wakeup (int ) ;

void
so_release_accept_list(struct socket *head)
{
 if (head->so_proto->pr_getlock != ((void*)0)) {
  lck_mtx_t *mutex_held;

  mutex_held = (*head->so_proto->pr_getlock)(head, 0);
  LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);

  head->so_flags1 &= ~SOF1_ACCEPT_LIST_HELD;
  wakeup((caddr_t)&head->so_incomp);
 }
}
