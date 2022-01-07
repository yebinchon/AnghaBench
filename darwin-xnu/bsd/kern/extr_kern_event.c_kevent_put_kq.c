
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kqueue {int kq_state; } ;
struct fileproc {int dummy; } ;
typedef scalar_t__ kqueue_id_t ;


 int KQ_WORKQ ;
 int assert (int) ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int kqueue_release_last (struct proc*,struct kqueue*) ;

__attribute__((used)) static void
kevent_put_kq(
 struct proc *p,
 kqueue_id_t id,
 struct fileproc *fp,
 struct kqueue *kq)
{
 kqueue_release_last(p, kq);
 if (fp != ((void*)0)) {
  assert((kq->kq_state & KQ_WORKQ) == 0);
  fp_drop(p, (int)id, fp, 0);
 }
}
