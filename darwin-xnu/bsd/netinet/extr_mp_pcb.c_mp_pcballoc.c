
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct mppcb* so_pcb; } ;
struct mppcbinfo {int mppi_lock; int mppi_count; int mppi_pcbs; int mppi_zone; int mppi_lock_grp; int mppi_lock_attr; int mppi_size; } ;
struct mppcb {int mpp_flags; int mpp_lock; struct socket* mpp_socket; int mpp_state; struct mppcbinfo* mpp_pcbinfo; } ;


 int ENOBUFS ;
 int MPPCB_STATE_INUSE ;
 int MPP_ATTACHED ;
 int TAILQ_INSERT_TAIL (int *,struct mppcb*,int ) ;
 int VERIFY (int ) ;
 int bzero (struct mppcb*,int ) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mpp_entry ;
 int * mpsotomppcb (struct socket*) ;
 int mptcp_sescreate (struct mppcb*) ;
 struct mppcb* zalloc (int ) ;
 int zfree (int ,struct mppcb*) ;

int
mp_pcballoc(struct socket *so, struct mppcbinfo *mppi)
{
 struct mppcb *mpp = ((void*)0);
 int error;

 VERIFY(mpsotomppcb(so) == ((void*)0));

 mpp = zalloc(mppi->mppi_zone);
 if (mpp == ((void*)0)) {
  return (ENOBUFS);
 }

 bzero(mpp, mppi->mppi_size);
 lck_mtx_init(&mpp->mpp_lock, mppi->mppi_lock_grp, mppi->mppi_lock_attr);
 mpp->mpp_pcbinfo = mppi;
 mpp->mpp_state = MPPCB_STATE_INUSE;
 mpp->mpp_socket = so;
 so->so_pcb = mpp;

 error = mptcp_sescreate(mpp);
 if (error) {
  lck_mtx_destroy(&mpp->mpp_lock, mppi->mppi_lock_grp);
  zfree(mppi->mppi_zone, mpp);
  return (error);
 }

 lck_mtx_lock(&mppi->mppi_lock);
 mpp->mpp_flags |= MPP_ATTACHED;
 TAILQ_INSERT_TAIL(&mppi->mppi_pcbs, mpp, mpp_entry);
 mppi->mppi_count++;
 lck_mtx_unlock(&mppi->mppi_lock);

 return (0);
}
