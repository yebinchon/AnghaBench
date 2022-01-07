
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int ecn_flags; int t_flagsext; } ;
struct socket {int so_flags; } ;


 int SOF_MP_SUBFLOW ;
 int TE_SETUPSENT ;
 int TF_FASTOPEN ;

__attribute__((used)) static inline bool
tcp_send_ecn_flags_on_syn(struct tcpcb *tp, struct socket *so)
{
 return(!((tp->ecn_flags & TE_SETUPSENT) ||
     (so->so_flags & SOF_MP_SUBFLOW) ||
     (tp->t_flagsext & TF_FASTOPEN)));
}
