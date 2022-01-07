
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sb_flags; } ;
struct TYPE_7__ {int sb_flags; } ;
struct socket {int so_flags; int so_upcallusecount; TYPE_4__ so_snd; TYPE_3__ so_rcv; TYPE_2__* so_proto; } ;
typedef int lck_mtx_t ;
typedef int caddr_t ;
struct TYPE_6__ {TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_5__ {int * dom_mtx; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PR_F_WILLUNLOCK ;
 scalar_t__ PZERO ;
 int SB_UPCALL ;
 int SOF_CLOSEWAIT ;
 int SOF_UPCALLCLOSEWAIT ;
 int msleep (int ,int *,scalar_t__,char*,int *) ;
 int * stub1 (struct socket*,int ) ;

void
soclose_wait_locked(struct socket *so)
{
 lck_mtx_t *mutex_held;

 if (so->so_proto->pr_getlock != ((void*)0))
  mutex_held = (*so->so_proto->pr_getlock)(so, PR_F_WILLUNLOCK);
 else
  mutex_held = so->so_proto->pr_domain->dom_mtx;
 LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);





 if (!so->so_upcallusecount || !(so->so_flags & SOF_UPCALLCLOSEWAIT))
  return;
 so->so_rcv.sb_flags &= ~SB_UPCALL;
 so->so_snd.sb_flags &= ~SB_UPCALL;
 so->so_flags |= SOF_CLOSEWAIT;

 (void) msleep((caddr_t)&so->so_upcallusecount, mutex_held, (PZERO - 1),
     "soclose_wait_locked", ((void*)0));
 LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);
 so->so_flags &= ~SOF_CLOSEWAIT;
}
