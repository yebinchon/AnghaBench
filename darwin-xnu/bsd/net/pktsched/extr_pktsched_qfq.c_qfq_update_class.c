
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct qfq_if {int dummy; } ;
struct qfq_group {scalar_t__ qfg_S; int qfg_slot_shift; } ;
struct qfq_class {scalar_t__ cl_inv_w; scalar_t__ cl_S; scalar_t__ cl_F; int cl_q; } ;
struct mbuf {int dummy; } ;


 scalar_t__ m_pktlen (struct mbuf*) ;
 scalar_t__ qempty (int *) ;
 int qfq_front_slot_remove (struct qfq_group*) ;
 scalar_t__ qfq_round_down (scalar_t__,int ) ;
 int qfq_slot_insert (struct qfq_if*,struct qfq_group*,struct qfq_class*,scalar_t__) ;
 scalar_t__ qhead (int *) ;

__attribute__((used)) static inline int
qfq_update_class(struct qfq_if *qif, struct qfq_group *grp,
    struct qfq_class *cl)
{
#pragma unused(qif)
 cl->cl_S = cl->cl_F;
 if (qempty(&cl->cl_q)) {
  qfq_front_slot_remove(grp);
 } else {
  u_int32_t len;
  u_int64_t roundedS;

  len = m_pktlen((struct mbuf *)qhead(&cl->cl_q));
  cl->cl_F = cl->cl_S + (u_int64_t)len * cl->cl_inv_w;
  roundedS = qfq_round_down(cl->cl_S, grp->qfg_slot_shift);
  if (roundedS == grp->qfg_S)
   return (0);

  qfq_front_slot_remove(grp);
  qfq_slot_insert(qif, grp, cl, roundedS);
 }
 return (1);
}
