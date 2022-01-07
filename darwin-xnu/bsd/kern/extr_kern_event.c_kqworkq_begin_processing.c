
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int dummy; } ;
struct kqrequest {int kqr_state; int kqr_thread; int kqr_qos_index; } ;


 int BSD_KEVENT_KQWQ_PROCESS_BEGIN ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KDBG_FILTERED (int,int ,int ) ;
 int KEV_EVTID (int ) ;
 int KQWQAE_BEGIN_PROCESSING ;
 int kqworkq_acknowledge_events (struct kqworkq*,struct kqrequest*,int,int ) ;
 int thread_tid (int ) ;

__attribute__((used)) static int
kqworkq_begin_processing(struct kqworkq *kqwq, struct kqrequest *kqr,
  int kevent_flags)
{
 int rc = 0;

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWQ_PROCESS_BEGIN) | DBG_FUNC_START,
   0, kqr->kqr_qos_index);

 rc = kqworkq_acknowledge_events(kqwq, kqr, kevent_flags,
   KQWQAE_BEGIN_PROCESSING);

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWQ_PROCESS_BEGIN) | DBG_FUNC_END,
   thread_tid(kqr->kqr_thread), kqr->kqr_state);

 return rc;
}
