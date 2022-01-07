
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct kctl {int (* send ) (int ,int ,int ,struct mbuf*,int) ;int kctlref; } ;
struct TYPE_3__ {int sc_unit; } ;
struct ctl_cb {int userdata; TYPE_1__ sac; struct kctl* kctl; } ;
struct TYPE_4__ {int kcs_send_fail; } ;
typedef int SInt64 ;


 int EINVAL ;
 int ENOTCONN ;
 int ENOTSUP ;
 int OSIncrementAtomic64 (int *) ;
 TYPE_2__ kctlstat ;
 int m_freem (struct mbuf*) ;
 int m_get_service_class (struct mbuf*) ;
 int so_tc_update_stats (struct mbuf*,struct socket*,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int stub1 (int ,int ,int ,struct mbuf*,int) ;

__attribute__((used)) static int
ctl_send(struct socket *so, int flags, struct mbuf *m,
 struct sockaddr *addr, struct mbuf *control,
 struct proc *p)
{
#pragma unused(addr, p)
 int error = 0;
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;
 struct kctl *kctl;

 if (control)
  m_freem(control);

 if (kcb == ((void*)0))
  error = ENOTCONN;

 if (error == 0 && (kctl = kcb->kctl) == ((void*)0))
  error = EINVAL;

 if (error == 0 && kctl->send) {
  so_tc_update_stats(m, so, m_get_service_class(m));
  socket_unlock(so, 0);
  error = (*kctl->send)(kctl->kctlref, kcb->sac.sc_unit, kcb->userdata,
      m, flags);
  socket_lock(so, 0);
 } else {
  m_freem(m);
  if (error == 0)
   error = ENOTSUP;
 }
 if (error != 0)
  OSIncrementAtomic64((SInt64 *)&kctlstat.kcs_send_fail);
 return (error);
}
