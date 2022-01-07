
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
typedef scalar_t__ tcp_seq ;
struct timeval {int tv_sec; } ;
struct tcpcb {scalar_t__ t_state; TYPE_1__* t_inpcb; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int isn_secret ;
struct TYPE_2__ {int inp_vflag; int inp_laddr; int inp_faddr; int in6p_laddr; int in6p_faddr; int inp_lport; int inp_fport; } ;
typedef int MD5_CTX ;


 int INP_IPV6 ;
 scalar_t__ ISN_BYTES_PER_SECOND ;
 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int *,int) ;
 scalar_t__ RandomULong () ;
 scalar_t__ TCPS_LISTEN ;
 scalar_t__ TCPS_TIME_WAIT ;
 scalar_t__ arc4random () ;
 int getmicrotime (struct timeval*) ;
 scalar_t__ hz ;
 int read_frandom (int **,int) ;
 int read_random_unlimited (int **,int) ;
 scalar_t__ tcp_isn_reseed_interval ;
 scalar_t__ tcp_strict_rfc1948 ;

tcp_seq
tcp_new_isn(struct tcpcb *tp)
{
 u_int32_t md5_buffer[4];
 tcp_seq new_isn;
 struct timeval timenow;
 u_char isn_secret[32];
 int isn_last_reseed = 0;
 MD5_CTX isn_ctx;


 if (((tp->t_state == TCPS_LISTEN) || (tp->t_state == TCPS_TIME_WAIT)) &&
     tcp_strict_rfc1948 == 0)



  return (arc4random());

 getmicrotime(&timenow);


 if ((isn_last_reseed == 0) ||
     ((tcp_strict_rfc1948 == 0) && (tcp_isn_reseed_interval > 0) &&
     (((u_int)isn_last_reseed + (u_int)tcp_isn_reseed_interval*hz)
  < (u_int)timenow.tv_sec))) {



  read_random_unlimited(&isn_secret, sizeof(isn_secret));

  isn_last_reseed = timenow.tv_sec;
 }


 MD5Init(&isn_ctx);
 MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->inp_fport,
     sizeof(u_short));
 MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->inp_lport,
     sizeof(u_short));
 {
  MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->inp_faddr,
      sizeof(struct in_addr));
  MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->inp_laddr,
      sizeof(struct in_addr));
 }
 MD5Update(&isn_ctx, (u_char *) &isn_secret, sizeof(isn_secret));
 MD5Final((u_char *) &md5_buffer, &isn_ctx);
 new_isn = (tcp_seq) md5_buffer[0];
 new_isn += timenow.tv_sec * (ISN_BYTES_PER_SECOND / hz);
 return (new_isn);
}
