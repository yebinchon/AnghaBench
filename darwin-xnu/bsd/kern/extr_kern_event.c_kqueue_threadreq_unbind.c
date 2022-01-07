
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kqrequest {int kqr_state; } ;


 int KQR_WORKLOOP ;
 int kqr_kqworkloop (struct kqrequest*) ;
 int kqworkloop_unbind (struct proc*,int ) ;
 int kqworkq_unbind (struct proc*,struct kqrequest*) ;

void
kqueue_threadreq_unbind(struct proc *p, struct kqrequest *kqr)
{
 if (kqr->kqr_state & KQR_WORKLOOP) {
  kqworkloop_unbind(p, kqr_kqworkloop(kqr));
 } else {
  kqworkq_unbind(p, kqr);
 }
}
