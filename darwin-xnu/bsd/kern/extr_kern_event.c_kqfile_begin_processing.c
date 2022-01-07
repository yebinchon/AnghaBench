
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct kqueue {int kq_state; int kq_wqs; } ;
struct kqtailq {int dummy; } ;


 int BSD_KEVENT_KQ_PROCESS_BEGIN ;
 int CAST_EVENT64_T (struct kqtailq*) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KDBG_FILTERED (int,int ,...) ;
 int KEV_EVTID (int ) ;
 int KQ_DRAIN ;
 int KQ_PROCESSING ;
 int KQ_PROCWAIT ;
 int KQ_WAKEUP ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 int QOS_INDEX_KQFILE ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int THREAD_WAIT_NOREPORT ;
 int TIMEOUT_WAIT_FOREVER ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct kqueue*) ;
 int assert (int) ;
 int kqlock (struct kqueue*) ;
 int kqlock_held (struct kqueue*) ;
 struct kqtailq* kqueue_get_suppressed_queue (struct kqueue*,int *) ;
 scalar_t__ kqueue_queue_empty (struct kqueue*,int ) ;
 int kqunlock (struct kqueue*) ;
 int thread_block (int ) ;
 int waitq_assert_wait64 (struct waitq*,int ,int,int ) ;
 int waitq_set_clear_preposts (int *) ;

__attribute__((used)) static int
kqfile_begin_processing(struct kqueue *kq)
{
 struct kqtailq *suppressq;

 kqlock_held(kq);

 assert((kq->kq_state & (KQ_WORKQ | KQ_WORKLOOP)) == 0);
 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_START,
               VM_KERNEL_UNSLIDE_OR_PERM(kq), 0);


 for (;;) {
  if (kq->kq_state & KQ_DRAIN) {
   KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
                 VM_KERNEL_UNSLIDE_OR_PERM(kq), 2);
   return -1;
  }

  if ((kq->kq_state & KQ_PROCESSING) == 0)
   break;


  kq->kq_state |= KQ_PROCWAIT;
  suppressq = kqueue_get_suppressed_queue(kq, ((void*)0));
  waitq_assert_wait64((struct waitq *)&kq->kq_wqs,
    CAST_EVENT64_T(suppressq), THREAD_UNINT | THREAD_WAIT_NOREPORT,
    TIMEOUT_WAIT_FOREVER);

  kqunlock(kq);
  thread_block(THREAD_CONTINUE_NULL);
  kqlock(kq);
 }




 waitq_set_clear_preposts(&kq->kq_wqs);
 kq->kq_state &= ~KQ_WAKEUP;


 if (kqueue_queue_empty(kq, QOS_INDEX_KQFILE)) {
  KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
                VM_KERNEL_UNSLIDE_OR_PERM(kq), 1);
  return -1;
 }


 kq->kq_state |= KQ_PROCESSING;

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
               VM_KERNEL_UNSLIDE_OR_PERM(kq));

 return 0;
}
