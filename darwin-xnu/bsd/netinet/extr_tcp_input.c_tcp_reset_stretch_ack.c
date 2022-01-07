
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flags; scalar_t__ rcv_waitforss; int t_flagsext; scalar_t__ rcv_unackwin; scalar_t__ rcv_by_unackwin; } ;


 int TF_RCVUNACK_WAITSS ;
 int TF_STREAMING_ON ;
 int TF_STRETCHACK ;
 scalar_t__ tcp_now ;
 scalar_t__ tcp_rcvunackwin ;

void
tcp_reset_stretch_ack(struct tcpcb *tp)
{
 tp->t_flags &= ~(TF_STRETCHACK|TF_STREAMING_ON);
 tp->rcv_by_unackwin = 0;
 tp->rcv_unackwin = tcp_now + tcp_rcvunackwin;







 tp->t_flagsext |= TF_RCVUNACK_WAITSS;
 tp->rcv_waitforss = 0;
}
