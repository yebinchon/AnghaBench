
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int SO_FILT_HINT_CANTSENDMORE ;
 int SO_FILT_HINT_LOCKED ;
 int SS_CANTSENDMORE ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_cantsendmore ;
 int soevent (struct socket*,int) ;
 int sowwakeup (struct socket*) ;

void
socantsendmore(struct socket *so)
{
 so->so_state |= SS_CANTSENDMORE;
 soevent(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_CANTSENDMORE);
 sflt_notify(so, sock_evt_cantsendmore, ((void*)0));
 sowwakeup(so);
}
