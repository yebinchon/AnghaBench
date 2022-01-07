
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_rxtshift; } ;
struct mptsub {int mpts_socket; } ;
struct mptses {scalar_t__ mpte_svctype; scalar_t__ mpte_reinjectq; } ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct TYPE_4__ {TYPE_1__ so_snd; } ;


 scalar_t__ MPTCP_SVCTYPE_HANDOVER ;
 int mptcp_fail_thresh ;
 TYPE_2__* mptetoso (struct mptses*) ;
 struct tcpcb* sototcpcb (int ) ;

boolean_t
mptcp_subflow_is_bad(struct mptses *mpte, struct mptsub *mpts)
{
 struct tcpcb *tp = sototcpcb(mpts->mpts_socket);
 int fail_thresh = mptcp_fail_thresh;

 if (mpte->mpte_svctype == MPTCP_SVCTYPE_HANDOVER)
  fail_thresh *= 2;

 return (tp->t_rxtshift >= fail_thresh &&
  (mptetoso(mpte)->so_snd.sb_cc || mpte->mpte_reinjectq));
}
