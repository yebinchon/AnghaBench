
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; } ;
typedef int lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_3__ {int * dom_mtx; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int * stub1 (struct socket*,int ) ;

void
socket_lock_assert_owned(struct socket *so)
{
 lck_mtx_t *mutex_held;

 if (so->so_proto->pr_getlock != ((void*)0))
  mutex_held = (*so->so_proto->pr_getlock)(so, 0);
 else
  mutex_held = so->so_proto->pr_domain->dom_mtx;

 LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);
}
