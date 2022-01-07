
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;


 scalar_t__ sb_notify (int *) ;
 int sowakeup (struct socket*,int *) ;

void
sorwakeup(struct socket *so)
{
 if (sb_notify(&so->so_rcv))
  sowakeup(so, &so->so_rcv);
}
