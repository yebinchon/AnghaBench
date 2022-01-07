
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int snd_nxt; int snd_una; int t_notsent_lowat; int t_flags; int t_maxseg; } ;
struct TYPE_2__ {int sb_cc; } ;
struct socket {TYPE_1__ so_snd; } ;
struct inpcb {int dummy; } ;


 int TF_NODELAY ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
tcp_notsent_lowat_check(struct socket *so)
{
 struct inpcb *inp = sotoinpcb(so);
 struct tcpcb *tp = ((void*)0);
 int notsent = 0;

 if (inp != ((void*)0)) {
  tp = intotcpcb(inp);
 }

 if (tp == ((void*)0)) {
  return (0);
 }

 notsent = so->so_snd.sb_cc -
  (tp->snd_nxt - tp->snd_una);







 if (notsent <= tp->t_notsent_lowat) {
  return (1);
 }






 if ((tp->t_flags & TF_NODELAY) == 0 &&
  notsent > 0 && notsent < tp->t_maxseg) {
  return (1);
 }
 return (0);
}
