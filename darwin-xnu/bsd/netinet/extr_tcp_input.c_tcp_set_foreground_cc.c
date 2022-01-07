
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int TCP_CC_ALGO_CUBIC_INDEX ;
 int TCP_CC_ALGO_NEWRENO_INDEX ;
 int tcp_set_new_cc (struct socket*,int ) ;
 scalar_t__ tcp_use_newreno ;

void
tcp_set_foreground_cc(struct socket *so)
{
 if (tcp_use_newreno)
  tcp_set_new_cc(so, TCP_CC_ALGO_NEWRENO_INDEX);
 else
  tcp_set_new_cc(so, TCP_CC_ALGO_CUBIC_INDEX);
}
