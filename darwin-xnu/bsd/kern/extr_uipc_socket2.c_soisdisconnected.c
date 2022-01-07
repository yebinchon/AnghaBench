
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; int so_timeo; } ;
typedef int caddr_t ;


 int SHUT_RDWR ;
 int SO_FILT_HINT_CONNINFO_UPDATED ;
 int SO_FILT_HINT_DISCONNECTED ;
 int SO_FILT_HINT_LOCKED ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int cfil_sock_notify_shutdown (struct socket*,int ) ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_disconnected ;
 int soevent (struct socket*,int) ;
 int sorwakeup (struct socket*) ;
 int sowwakeup (struct socket*) ;
 int wakeup (int ) ;

void
soisdisconnected(struct socket *so)
{
 so->so_state &= ~(SS_ISCONNECTING|SS_ISCONNECTED|SS_ISDISCONNECTING);
 so->so_state |= (SS_CANTRCVMORE|SS_CANTSENDMORE|SS_ISDISCONNECTED);
 soevent(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_DISCONNECTED |
     SO_FILT_HINT_CONNINFO_UPDATED);
 sflt_notify(so, sock_evt_disconnected, ((void*)0));
 wakeup((caddr_t)&so->so_timeo);
 sowwakeup(so);
 sorwakeup(so);





}
