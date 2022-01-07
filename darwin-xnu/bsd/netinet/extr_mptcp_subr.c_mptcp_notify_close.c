
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SO_FILT_HINT_DISCONNECTED ;
 int SO_FILT_HINT_LOCKED ;
 int soevent (struct socket*,int) ;

void
mptcp_notify_close(struct socket *so)
{
 soevent(so, (SO_FILT_HINT_LOCKED | SO_FILT_HINT_DISCONNECTED));
}
