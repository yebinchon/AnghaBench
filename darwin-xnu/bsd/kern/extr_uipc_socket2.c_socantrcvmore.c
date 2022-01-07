
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int SO_FILT_HINT_CANTRCVMORE ;
 int SO_FILT_HINT_LOCKED ;
 int SS_CANTRCVMORE ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_cantrecvmore ;
 int soevent (struct socket*,int) ;
 int sorwakeup (struct socket*) ;

void
socantrcvmore(struct socket *so)
{
 so->so_state |= SS_CANTRCVMORE;
 soevent(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_CANTRCVMORE);
 sflt_notify(so, sock_evt_cantrecvmore, ((void*)0));
 sorwakeup(so);
}
