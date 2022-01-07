
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; TYPE_2__* so_proto; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_disconnectx ) (struct socket*,int ,int ) ;} ;


 int SS_ISDISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_disconnected ;
 int stub1 (struct socket*,int ,int ) ;

int
sodisconnectxlocked(struct socket *so, sae_associd_t aid, sae_connid_t cid)
{
 int error;





 error = (*so->so_proto->pr_usrreqs->pru_disconnectx)(so, aid, cid);
 if (error == 0) {




  if (so->so_state & (SS_ISDISCONNECTING|SS_ISDISCONNECTED))
   sflt_notify(so, sock_evt_disconnected, ((void*)0));
 }
 return (error);
}
