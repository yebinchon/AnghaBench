
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_connecting ;

void
soisconnecting(struct socket *so)
{
 so->so_state &= ~(SS_ISCONNECTED|SS_ISDISCONNECTING);
 so->so_state |= SS_ISCONNECTING;

 sflt_notify(so, sock_evt_connecting, ((void*)0));
}
