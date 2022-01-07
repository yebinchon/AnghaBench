
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq_link {int dummy; } ;
struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_eventmask; } ;
struct select_thread_ctx {int * spl; scalar_t__ event; TYPE_1__* thread; } ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ event64_t ;
struct TYPE_7__ {scalar_t__ wait_event; struct waitq* waitq; } ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 int LINK_WALK_FULL_DAG ;
 int WQL_WQS ;
 scalar_t__ WQ_ITERATE_FOUND ;
 int splsched () ;
 int splx (int ) ;
 int thread_clear_waitq_state (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 scalar_t__ waitq_empty (struct waitq*) ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_select_thread_cb ;
 int waitq_thread_remove (struct waitq*,TYPE_1__*) ;
 int waitq_unlock (struct waitq*) ;
 scalar_t__ walk_waitq_links (int ,struct waitq*,scalar_t__,int ,void*,int ) ;
 struct waitq_link* wql_get_link (scalar_t__) ;
 int wql_put_link (struct waitq_link*) ;

__attribute__((used)) static kern_return_t waitq_select_thread_locked(struct waitq *waitq,
      event64_t event,
      thread_t thread, spl_t *spl)
{
 struct waitq *safeq;
 struct waitq_link *link;
 struct select_thread_ctx ctx;
 kern_return_t kr;
 spl_t s;

 s = splsched();


 if (!waitq_irq_safe(waitq)) {
  safeq = waitq_get_safeq(waitq);
  waitq_lock(safeq);
 } else {
  safeq = waitq;
 }

 thread_lock(thread);

 if ((thread->waitq == waitq) && (thread->wait_event == event)) {
  waitq_thread_remove(safeq, thread);
  if (waitq_empty(safeq)) {
   safeq->waitq_eventmask = 0;
  }
  thread_clear_waitq_state(thread);
  *spl = s;

  return KERN_SUCCESS;
 }

 thread_unlock(thread);

 if (safeq != waitq)
  waitq_unlock(safeq);

 splx(s);

 if (!waitq->waitq_set_id)
  return KERN_NOT_WAITING;


 link = wql_get_link(waitq->waitq_set_id);
 if (!link) {

  waitq->waitq_set_id = 0;
  return KERN_NOT_WAITING;
 }







 ctx.thread = thread;
 ctx.event = event;
 ctx.spl = spl;
 kr = walk_waitq_links(LINK_WALK_FULL_DAG, waitq, waitq->waitq_set_id,
         WQL_WQS, (void *)&ctx, waitq_select_thread_cb);

 wql_put_link(link);


 if (kr == WQ_ITERATE_FOUND)
  return KERN_SUCCESS;

 return KERN_NOT_WAITING;
}
