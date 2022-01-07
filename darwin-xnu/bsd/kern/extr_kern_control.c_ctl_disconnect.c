
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct kctl {int kcb_head; int kctlref; int (* disconnect ) (int ,int ,int ) ;} ;
struct TYPE_3__ {int sc_unit; } ;
struct ctl_cb {scalar_t__ usecount; TYPE_1__ sac; struct kctl* kctl; int userdata; } ;
struct TYPE_4__ {int kcs_gencnt; int kcs_pcbcount; } ;


 int TAILQ_REMOVE (int *,struct ctl_cb*,int ) ;
 int ctl_mtx ;
 TYPE_2__ kctlstat ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;
 int next ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisdisconnected (struct socket*) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int
ctl_disconnect(struct socket *so)
{
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 if ((kcb = (struct ctl_cb *)so->so_pcb)) {
  struct kctl *kctl = kcb->kctl;

  if (kctl && kctl->disconnect) {
   socket_unlock(so, 0);
   (*kctl->disconnect)(kctl->kctlref, kcb->sac.sc_unit,
       kcb->userdata);
   socket_lock(so, 0);
  }

  soisdisconnected(so);

  socket_unlock(so, 0);
  lck_mtx_lock(ctl_mtx);
  kcb->kctl = 0;
  kcb->sac.sc_unit = 0;
  while (kcb->usecount != 0) {
   msleep(&kcb->usecount, ctl_mtx, 0, "kcb->usecount", 0);
  }
  TAILQ_REMOVE(&kctl->kcb_head, kcb, next);
  kctlstat.kcs_pcbcount--;
  kctlstat.kcs_gencnt++;
  lck_mtx_unlock(ctl_mtx);
  socket_lock(so, 0);
 }
 return (0);
}
