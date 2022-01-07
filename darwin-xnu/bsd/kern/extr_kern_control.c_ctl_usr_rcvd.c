
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct kctl {int kctlref; int (* rcvd ) (int ,int ,int ,int) ;} ;
struct TYPE_2__ {int sc_unit; } ;
struct ctl_cb {int userdata; TYPE_1__ sac; struct kctl* kctl; } ;


 int EINVAL ;
 int ctl_sbrcv_trim (struct socket*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static int
ctl_usr_rcvd(struct socket *so, int flags)
{
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;
 struct kctl *kctl;

 if ((kctl = kcb->kctl) == ((void*)0)) {
  return (EINVAL);
 }

 if (kctl->rcvd) {
  socket_unlock(so, 0);
  (*kctl->rcvd)(kctl->kctlref, kcb->sac.sc_unit, kcb->userdata, flags);
  socket_lock(so, 0);
 }

 ctl_sbrcv_trim(so);

 return (0);
}
