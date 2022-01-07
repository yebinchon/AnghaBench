
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mppcbinfo {scalar_t__ mppi_count; int mppi_zone; int mppi_lock_grp; int mppi_pcbs; int mppi_lock; } ;
struct mppcb {scalar_t__ mpp_state; int mpp_flags; TYPE_1__* mpp_socket; int mpp_lock; struct mppcbinfo* mpp_pcbinfo; } ;
struct TYPE_2__ {scalar_t__ so_usecount; int * so_pcb; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ MPPCB_STATE_DEAD ;
 int MPP_ATTACHED ;
 int TAILQ_REMOVE (int *,struct mppcb*,int ) ;
 int VERIFY (int) ;
 int lck_mtx_destroy (int *,int ) ;
 int mpp_entry ;
 int mpp_lock_assert_held (struct mppcb*) ;
 int mpp_unlock (struct mppcb*) ;
 int necp_mppcb_dispose (struct mppcb*) ;
 int zfree (int ,struct mppcb*) ;

void
mp_pcbdispose(struct mppcb *mpp)
{
 struct mppcbinfo *mppi = mpp->mpp_pcbinfo;

 VERIFY(mppi != ((void*)0));

 LCK_MTX_ASSERT(&mppi->mppi_lock, LCK_MTX_ASSERT_OWNED);
 mpp_lock_assert_held(mpp);

 VERIFY(mpp->mpp_state == MPPCB_STATE_DEAD);
 VERIFY(mpp->mpp_flags & MPP_ATTACHED);

 mpp->mpp_flags &= ~MPP_ATTACHED;
 TAILQ_REMOVE(&mppi->mppi_pcbs, mpp, mpp_entry);
 VERIFY(mppi->mppi_count != 0);
 mppi->mppi_count--;

 mpp_unlock(mpp);





 lck_mtx_destroy(&mpp->mpp_lock, mppi->mppi_lock_grp);

 VERIFY(mpp->mpp_socket != ((void*)0));
 VERIFY(mpp->mpp_socket->so_usecount == 0);
 mpp->mpp_socket->so_pcb = ((void*)0);
 mpp->mpp_socket = ((void*)0);

 zfree(mppi->mppi_zone, mpp);
}
