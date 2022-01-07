
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct uthread {struct kqrequest* uu_kqr_bound; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {scalar_t__ tr_state; } ;
struct kqrequest {TYPE_1__ kqr_req; } ;
typedef int kqueue_t ;


 scalar_t__ TR_STATE_BINDING ;
 struct uthread* get_bsdthread_info (int ) ;
 int kq_req_lock (int ) ;
 int kq_req_unlock (int ) ;
 int kqr_kqueue (struct proc*,struct kqrequest*) ;
 int kqueue_threadreq_bind (struct proc*,TYPE_1__*,int ,int ) ;

void
kqueue_threadreq_bind_commit(struct proc *p, thread_t thread)
{
 struct uthread *ut = get_bsdthread_info(thread);
 struct kqrequest *kqr = ut->uu_kqr_bound;
 kqueue_t kqu = kqr_kqueue(p, kqr);

 kq_req_lock(kqu);
 if (kqr->kqr_req.tr_state == TR_STATE_BINDING) {
  kqueue_threadreq_bind(p, &kqr->kqr_req, thread, 0);
 }
 kq_req_unlock(kqu);
}
