
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; int so_timeo; } ;
typedef int caddr_t ;


 int SO_FILT_HINT_LOCKED ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_disconnecting ;
 int soevent (struct socket*,int ) ;
 int sorwakeup (struct socket*) ;
 int sowwakeup (struct socket*) ;
 int wakeup (int ) ;

void
soisdisconnecting(struct socket *so)
{
 so->so_state &= ~SS_ISCONNECTING;
 so->so_state |= (SS_ISDISCONNECTING|SS_CANTRCVMORE|SS_CANTSENDMORE);
 soevent(so, SO_FILT_HINT_LOCKED);
 sflt_notify(so, sock_evt_disconnecting, ((void*)0));
 wakeup((caddr_t)&so->so_timeo);
 sowwakeup(so);
 sorwakeup(so);
}
