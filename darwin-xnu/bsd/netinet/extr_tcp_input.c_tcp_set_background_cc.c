
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int TCP_CC_ALGO_BACKGROUND_INDEX ;
 int tcp_set_new_cc (struct socket*,int ) ;

void
tcp_set_background_cc(struct socket *so)
{
 tcp_set_new_cc(so, TCP_CC_ALGO_BACKGROUND_INDEX);
}
