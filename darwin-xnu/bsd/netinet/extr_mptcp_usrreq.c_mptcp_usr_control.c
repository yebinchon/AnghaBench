
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct so_cinforeq64 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct so_cinforeq32 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct so_cidreq64 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct so_cidreq32 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct so_aidreq64 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct so_aidreq32 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; int scr_cidp; int scr_cnt; int scr_aid; int sar_aidp; int sar_cnt; } ;
struct proc {int dummy; } ;
struct mptses {int dummy; } ;
struct mppcb {scalar_t__ mpp_state; } ;
struct ifnet {int dummy; } ;
typedef int cifr ;
typedef int cidr ;
typedef struct so_cinforeq64* caddr_t ;
typedef int aidr ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ MPPCB_STATE_DEAD ;






 int VERIFY (int ) ;
 int bcopy (struct so_cinforeq64*,struct so_cinforeq64*,int) ;
 struct mppcb* mpsotomppcb (struct socket*) ;
 int mptcp_getassocids (struct mptses*,int *,int ) ;
 int mptcp_getconnids (struct mptses*,int ,int *,int ) ;
 int mptcp_getconninfo (struct mptses*,int *,int *,int *,int *,int ,int *,int ,int *,int *,int ,int *) ;
 int mpte_lock_assert_held (struct mptses*) ;
 struct mptses* mptompte (struct mppcb*) ;

__attribute__((used)) static int
mptcp_usr_control(struct socket *mp_so, u_long cmd, caddr_t data,
    struct ifnet *ifp, struct proc *p)
{
#pragma unused(ifp, p)
 struct mppcb *mpp = mpsotomppcb(mp_so);
 struct mptses *mpte;
 int error = 0;

 if (mpp == ((void*)0) || mpp->mpp_state == MPPCB_STATE_DEAD) {
  error = EINVAL;
  goto out;
 }
 mpte = mptompte(mpp);
 VERIFY(mpte != ((void*)0));

 mpte_lock_assert_held(mpte);

 switch (cmd) {
 case 133: {
  struct so_aidreq32 aidr;
  bcopy(data, &aidr, sizeof (aidr));
  error = mptcp_getassocids(mpte, &aidr.sar_cnt,
      aidr.sar_aidp);
  if (error == 0)
   bcopy(&aidr, data, sizeof (aidr));
  break;
 }

 case 132: {
  struct so_aidreq64 aidr;
  bcopy(data, &aidr, sizeof (aidr));
  error = mptcp_getassocids(mpte, &aidr.sar_cnt,
      aidr.sar_aidp);
  if (error == 0)
   bcopy(&aidr, data, sizeof (aidr));
  break;
 }

 case 131: {
  struct so_cidreq32 cidr;
  bcopy(data, &cidr, sizeof (cidr));
  error = mptcp_getconnids(mpte, cidr.scr_aid, &cidr.scr_cnt,
      cidr.scr_cidp);
  if (error == 0)
   bcopy(&cidr, data, sizeof (cidr));
  break;
 }

 case 130: {
  struct so_cidreq64 cidr;
  bcopy(data, &cidr, sizeof (cidr));
  error = mptcp_getconnids(mpte, cidr.scr_aid, &cidr.scr_cnt,
      cidr.scr_cidp);
  if (error == 0)
   bcopy(&cidr, data, sizeof (cidr));
  break;
 }

 case 129: {
  struct so_cinforeq32 cifr;
  bcopy(data, &cifr, sizeof (cifr));
  error = mptcp_getconninfo(mpte, &cifr.scir_cid,
      &cifr.scir_flags, &cifr.scir_ifindex, &cifr.scir_error,
      cifr.scir_src, &cifr.scir_src_len, cifr.scir_dst,
      &cifr.scir_dst_len, &cifr.scir_aux_type, cifr.scir_aux_data,
      &cifr.scir_aux_len);
  if (error == 0)
   bcopy(&cifr, data, sizeof (cifr));
  break;
 }

 case 128: {
  struct so_cinforeq64 cifr;
  bcopy(data, &cifr, sizeof (cifr));
  error = mptcp_getconninfo(mpte, &cifr.scir_cid,
      &cifr.scir_flags, &cifr.scir_ifindex, &cifr.scir_error,
      cifr.scir_src, &cifr.scir_src_len, cifr.scir_dst,
      &cifr.scir_dst_len, &cifr.scir_aux_type, cifr.scir_aux_data,
      &cifr.scir_aux_len);
  if (error == 0)
   bcopy(&cifr, data, sizeof (cifr));
  break;
 }

 default:
  error = EOPNOTSUPP;
  break;
 }
out:
 return (error);
}
