
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct ctl_cb {int userdata; int sac; TYPE_1__* kctl; } ;
struct TYPE_2__ {int (* bind ) (int ,int *,int *) ;int kctlref; } ;


 int EINVAL ;
 int ctl_setup_kctl (struct socket*,struct sockaddr*,struct proc*) ;
 int panic (char*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int stub1 (int ,int *,int *) ;

__attribute__((used)) static int
ctl_bind(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 int error = 0;
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 if (kcb == ((void*)0)) {
  panic("ctl_bind so_pcb null\n");
 }

 error = ctl_setup_kctl(so, nam, p);
 if (error) {
  return (error);
 }

 if (kcb->kctl == ((void*)0)) {
  panic("ctl_bind kctl null\n");
 }

 if (kcb->kctl->bind == ((void*)0)) {
  return (EINVAL);
 }

 socket_unlock(so, 0);
 error = (*kcb->kctl->bind)(kcb->kctl->kctlref, &kcb->sac, &kcb->userdata);
 socket_lock(so, 0);

 return (error);
}
