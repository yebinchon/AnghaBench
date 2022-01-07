
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; TYPE_2__* so_proto; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_disconnect ) (struct socket*) ;} ;


 int EALREADY ;
 int ENOTCONN ;
 int SS_ISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_disconnected ;
 int stub1 (struct socket*) ;

int
sodisconnectlocked(struct socket *so)
{
 int error;

 if ((so->so_state & SS_ISCONNECTED) == 0) {
  error = ENOTCONN;
  goto bad;
 }
 if (so->so_state & SS_ISDISCONNECTING) {
  error = EALREADY;
  goto bad;
 }

 error = (*so->so_proto->pr_usrreqs->pru_disconnect)(so);
 if (error == 0)
  sflt_notify(so, sock_evt_disconnected, ((void*)0));

bad:
 return (error);
}
