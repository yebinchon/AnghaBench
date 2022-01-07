
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_lowat; } ;
struct socket {int so_state; scalar_t__ so_error; int so_flags1; int so_flags; scalar_t__ so_type; TYPE_1__ so_snd; } ;


 scalar_t__ IPPROTO_TCP ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_MULTIPATH ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 scalar_t__ SOCK_STREAM ;
 int SOF1_PRECONNECT_DATA ;
 int SOF_NOTSENT_LOWAT ;
 int SS_CANTSENDMORE ;
 int mptcp_notsent_lowat_check (struct socket*) ;
 scalar_t__ sbspace (TYPE_1__*) ;
 scalar_t__ so_wait_for_if_feedback (struct socket*) ;
 int socanwrite (struct socket*) ;
 int tcp_notsent_lowat_check (struct socket*) ;

int
sowriteable(struct socket *so)
{
 if ((so->so_state & SS_CANTSENDMORE) ||
     so->so_error > 0)
  return (1);
 if (so_wait_for_if_feedback(so) || !socanwrite(so))
  return (0);
 if (so->so_flags1 & SOF1_PRECONNECT_DATA)
  return(1);

 if (sbspace(&(so)->so_snd) >= (so)->so_snd.sb_lowat) {
  if (so->so_flags & SOF_NOTSENT_LOWAT) {
   if ((SOCK_DOM(so) == PF_INET6 ||
       SOCK_DOM(so) == PF_INET) &&
       so->so_type == SOCK_STREAM) {
    return (tcp_notsent_lowat_check(so));
   }






   else {
    return (1);
   }
  } else {
   return (1);
  }
 }
 return (0);
}
