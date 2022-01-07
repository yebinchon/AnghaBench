
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {struct mptsub* t_mpsub; } ;
struct mptsub {int mpts_flags; } ;


 int MPTSF_READ_STALL ;

void
mptcp_reset_keepalive(struct tcpcb *tp)
{
 struct mptsub *mpts = tp->t_mpsub;

 mpts->mpts_flags &= ~MPTSF_READ_STALL;
}
