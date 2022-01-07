
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unpcb {scalar_t__ unp_gencnt; struct socket* unp_socket; int unp_refs; int unp_mtx; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct socket {int so_type; TYPE_2__ so_snd; TYPE_1__ so_rcv; scalar_t__ so_pcb; } ;
typedef scalar_t__ caddr_t ;


 int ENOBUFS ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct unpcb*,int ) ;
 int SB_UNIX ;


 int bzero (struct unpcb*,int) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int panic (char*) ;
 int soreserve (struct socket*,int ,int ) ;
 int unp_count ;
 int unp_dhead ;
 scalar_t__ unp_gencnt ;
 int unp_link ;
 int unp_list_mtx ;
 int unp_mtx_attr ;
 int unp_mtx_grp ;
 int unp_shead ;
 int unp_zone ;
 int unpdg_recvspace ;
 int unpdg_sendspace ;
 int unpst_recvspace ;
 int unpst_sendspace ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static int
unp_attach(struct socket *so)
{
 struct unpcb *unp;
 int error = 0;

 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  switch (so->so_type) {

  case 128:
   error = soreserve(so, unpst_sendspace, unpst_recvspace);
   break;

  case 129:
   error = soreserve(so, unpdg_sendspace, unpdg_recvspace);
   break;

  default:
   panic("unp_attach");
  }
  if (error)
   return (error);
 }
 unp = (struct unpcb *)zalloc(unp_zone);
 if (unp == ((void*)0))
  return (ENOBUFS);
 bzero(unp, sizeof (*unp));

 lck_mtx_init(&unp->unp_mtx,
  unp_mtx_grp, unp_mtx_attr);

 lck_rw_lock_exclusive(unp_list_mtx);
 LIST_INIT(&unp->unp_refs);
 unp->unp_socket = so;
 unp->unp_gencnt = ++unp_gencnt;
 unp_count++;
 LIST_INSERT_HEAD(so->so_type == 129 ?
     &unp_dhead : &unp_shead, unp, unp_link);
 lck_rw_done(unp_list_mtx);
 so->so_pcb = (caddr_t)unp;
 so->so_rcv.sb_flags |= SB_UNIX;
 so->so_snd.sb_flags |= SB_UNIX;
 return (0);
}
