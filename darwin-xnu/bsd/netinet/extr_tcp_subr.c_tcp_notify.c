
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_state; int t_rxtshift; int t_softerror; } ;
struct rtentry {int dummy; } ;
struct TYPE_5__ {struct rtentry* ro_rt; } ;
struct inpcb {scalar_t__ inp_state; TYPE_1__ inp_route; scalar_t__ inp_ppcb; } ;
typedef int caddr_t ;
struct TYPE_6__ {int so_timeo; } ;


 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 scalar_t__ INPCB_STATE_DEAD ;
 scalar_t__ TCPS_ESTABLISHED ;
 int VERIFY (int ) ;
 int rtfree (struct rtentry*) ;
 TYPE_2__* so ;
 int sorwakeup (TYPE_2__*) ;
 int sowwakeup (TYPE_2__*) ;
 int tcp_drop (struct tcpcb*,int) ;
 int wakeup (int ) ;

__attribute__((used)) static void
tcp_notify(struct inpcb *inp, int error)
{
 struct tcpcb *tp;

 if (inp == ((void*)0) || (inp->inp_state == INPCB_STATE_DEAD))
  return;

 tp = (struct tcpcb *)inp->inp_ppcb;

 VERIFY(tp != ((void*)0));







 if (tp->t_state == TCPS_ESTABLISHED &&
     (error == EHOSTUNREACH || error == ENETUNREACH ||
     error == EHOSTDOWN)) {
  if (inp->inp_route.ro_rt) {
   rtfree(inp->inp_route.ro_rt);
   inp->inp_route.ro_rt = (struct rtentry *)((void*)0);
  }
 } else if (tp->t_state < TCPS_ESTABLISHED && tp->t_rxtshift > 3 &&
     tp->t_softerror)
  tcp_drop(tp, error);
 else
  tp->t_softerror = error;





}
