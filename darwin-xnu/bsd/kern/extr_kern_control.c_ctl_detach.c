
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; int so_flags; scalar_t__ so_pcb; } ;
struct TYPE_4__ {int sc_unit; } ;
struct ctl_cb {int * userdata; TYPE_2__ sac; TYPE_1__* kctl; } ;
struct TYPE_3__ {int kctlref; int (* disconnect ) (int ,int ,int *) ;int * bind; } ;


 int SOF_PCBCLEARING ;
 int SS_ISCONNECTED ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisdisconnected (struct socket*) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int
ctl_detach(struct socket *so)
{
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 if (kcb == 0)
  return (0);

 if (kcb->kctl != ((void*)0) && kcb->kctl->bind != ((void*)0) &&
     kcb->userdata != ((void*)0) && !(so->so_state & SS_ISCONNECTED)) {


  if (kcb->kctl->disconnect != ((void*)0)) {
   socket_unlock(so, 0);
   (*kcb->kctl->disconnect)(kcb->kctl->kctlref,
       kcb->sac.sc_unit, kcb->userdata);
   socket_lock(so, 0);
  }
 }

 soisdisconnected(so);
 so->so_flags |= SOF_PCBCLEARING;
 return (0);
}
