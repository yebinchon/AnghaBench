
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct kctl {int kcb_head; } ;
struct ctl_cb {struct kctl* kctl; } ;
struct TYPE_2__ {int kcs_gencnt; int kcs_pcbcount; } ;


 int TAILQ_REMOVE (int *,struct ctl_cb*,int ) ;
 int ctl_mtx ;
 int kcb_delete (struct ctl_cb*) ;
 TYPE_1__ kctlstat ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int next ;
 int sofreelastref (struct socket*,int) ;

__attribute__((used)) static int
ctl_sofreelastref(struct socket *so)
{
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 so->so_pcb = 0;

 if (kcb != 0) {
  struct kctl *kctl;
  if ((kctl = kcb->kctl) != 0) {
   lck_mtx_lock(ctl_mtx);
   TAILQ_REMOVE(&kctl->kcb_head, kcb, next);
   kctlstat.kcs_pcbcount--;
   kctlstat.kcs_gencnt++;
   lck_mtx_unlock(ctl_mtx);
  }
  kcb_delete(kcb);
 }
 sofreelastref(so, 1);
 return (0);
}
