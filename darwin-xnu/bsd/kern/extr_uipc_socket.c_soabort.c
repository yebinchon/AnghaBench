
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int so_flags; TYPE_3__* so_proto; } ;
typedef int lck_mtx_t ;
struct TYPE_6__ {TYPE_2__* pr_usrreqs; TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_5__ {int (* pru_abort ) (struct socket*) ;} ;
struct TYPE_4__ {int * dom_mtx; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int SOF_ABORTED ;
 int sofree (struct socket*) ;
 int * stub1 (struct socket*,int ) ;
 int stub2 (struct socket*) ;

int
soabort(struct socket *so)
{
 int error;
 if ((so->so_flags & SOF_ABORTED) == 0) {
  so->so_flags |= SOF_ABORTED;
  error = (*so->so_proto->pr_usrreqs->pru_abort)(so);
  if (error) {
   sofree(so);
   return (error);
  }
 }
 return (0);
}
