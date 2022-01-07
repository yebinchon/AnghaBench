
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_continue_t ;
struct kaudit_record {int k_ar_commit; } ;
struct kaudit_queue {int dummy; } ;
struct TYPE_4__ {int * vc_thread; } ;
struct TYPE_3__ {scalar_t__ aq_lowater; } ;


 int AR_DRAIN_QUEUE ;
 int MA_OWNED ;
 scalar_t__ TAILQ_EMPTY (struct kaudit_queue*) ;
 struct kaudit_record* TAILQ_FIRST (struct kaudit_queue*) ;
 int TAILQ_INIT (struct kaudit_queue*) ;
 int TAILQ_INSERT_TAIL (struct kaudit_queue*,struct kaudit_record*,int ) ;
 int TAILQ_REMOVE (struct kaudit_queue*,struct kaudit_record*,int ) ;
 TYPE_2__ audit_ctx ;
 int audit_drain_cv ;
 int audit_free (struct kaudit_record*) ;
 int audit_mtx ;
 struct kaudit_queue audit_q ;
 scalar_t__ audit_q_draining ;
 scalar_t__ audit_q_len ;
 TYPE_1__ audit_qctrl ;
 int audit_watermark_cv ;
 int audit_worker_cv ;
 int audit_worker_process_record (struct kaudit_record*) ;
 int * current_thread () ;
 int cv_broadcast (int *) ;
 int cv_wait_continuation (int *,int *,int ) ;
 int k_q ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) __attribute__((noreturn))
static void
audit_worker(void)
{
 struct kaudit_queue ar_worklist;
 struct kaudit_record *ar;
 int lowater_signal;

 if (audit_ctx.vc_thread == ((void*)0))
  audit_ctx.vc_thread = current_thread();

 TAILQ_INIT(&ar_worklist);
 mtx_lock(&audit_mtx);
 while (1) {
  mtx_assert(&audit_mtx, MA_OWNED);




  while (TAILQ_EMPTY(&audit_q))
   cv_wait_continuation(&audit_worker_cv, &audit_mtx,
       (thread_continue_t)audit_worker);
  lowater_signal = 0;
  while ((ar = TAILQ_FIRST(&audit_q))) {
   TAILQ_REMOVE(&audit_q, ar, k_q);
   audit_q_len--;
   if (audit_q_len == audit_qctrl.aq_lowater)
    lowater_signal++;
   TAILQ_INSERT_TAIL(&ar_worklist, ar, k_q);
  }
  if (lowater_signal)
   cv_broadcast(&audit_watermark_cv);

  mtx_unlock(&audit_mtx);
  while ((ar = TAILQ_FIRST(&ar_worklist))) {
   TAILQ_REMOVE(&ar_worklist, ar, k_q);
   if (ar->k_ar_commit & AR_DRAIN_QUEUE) {
    audit_q_draining = 0;
    cv_broadcast(&audit_drain_cv);
   } else {
    audit_worker_process_record(ar);
    audit_free(ar);
   }
  }
  mtx_lock(&audit_mtx);
 }
}
