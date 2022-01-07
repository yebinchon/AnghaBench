
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_5__ {scalar_t__ sc_unit; } ;
struct ctl_cb {TYPE_2__ sac; TYPE_1__* kctl; int userdata; } ;
struct TYPE_6__ {int kcs_conn_fail; int kcs_gencnt; int kcs_pcbcount; } ;
struct TYPE_4__ {int (* connect ) (int ,TYPE_2__*,int *) ;int kcb_head; int kctlref; int (* disconnect ) (int ,scalar_t__,int ) ;} ;


 int TAILQ_REMOVE (int *,struct ctl_cb*,int ) ;
 int ctl_mtx ;
 int ctl_setup_kctl (struct socket*,struct sockaddr*,struct proc*) ;
 TYPE_3__ kctlstat ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int next ;
 int panic (char*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisconnected (struct socket*) ;
 int soisconnecting (struct socket*) ;
 int soisdisconnected (struct socket*) ;
 int stub1 (int ,TYPE_2__*,int *) ;
 int stub2 (int ,scalar_t__,int ) ;

__attribute__((used)) static int
ctl_connect(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 int error = 0;
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 if (kcb == ((void*)0)) {
  panic("ctl_connect so_pcb null\n");
 }

 error = ctl_setup_kctl(so, nam, p);
 if (error) {
  return (error);
 }

 if (kcb->kctl == ((void*)0)) {
  panic("ctl_connect kctl null\n");
 }

 soisconnecting(so);
 socket_unlock(so, 0);
 error = (*kcb->kctl->connect)(kcb->kctl->kctlref, &kcb->sac, &kcb->userdata);
 socket_lock(so, 0);
 if (error) {
  goto end;
 }
 soisconnected(so);

end:
 if (error && kcb->kctl->disconnect) {
  socket_unlock(so, 0);
  (*kcb->kctl->disconnect)(kcb->kctl->kctlref, kcb->sac.sc_unit, kcb->userdata);
  socket_lock(so, 0);
 }
 if (error) {
  soisdisconnected(so);
  lck_mtx_lock(ctl_mtx);
  TAILQ_REMOVE(&kcb->kctl->kcb_head, kcb, next);
  kcb->kctl = ((void*)0);
  kcb->sac.sc_unit = 0;
  kctlstat.kcs_pcbcount--;
  kctlstat.kcs_gencnt++;
  kctlstat.kcs_conn_fail++;
  lck_mtx_unlock(ctl_mtx);
 }
 return (error);
}
