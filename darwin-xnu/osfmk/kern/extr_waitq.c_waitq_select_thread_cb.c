
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct waitq {scalar_t__ waitq_eventmask; } ;
struct waitq_set {struct waitq wqset_q; } ;
struct TYPE_7__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_1__ wql_wqs; } ;
struct select_thread_ctx {scalar_t__ event; int * spl; TYPE_2__* thread; } ;
typedef int spl_t ;
typedef scalar_t__ event64_t ;
struct TYPE_8__ {scalar_t__ wait_event; struct waitq* waitq; } ;


 scalar_t__ WQL_WQS ;
 int WQ_ITERATE_CONTINUE ;
 int WQ_ITERATE_FOUND ;
 int assert (int) ;
 int splsched () ;
 int splx (int ) ;
 int thread_clear_waitq_state (TYPE_2__*) ;
 int thread_lock (TYPE_2__*) ;
 int thread_unlock (TYPE_2__*) ;
 scalar_t__ waitq_empty (struct waitq*) ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitq_thread_remove (struct waitq*,TYPE_2__*) ;
 int waitq_unlock (struct waitq*) ;
 scalar_t__ wql_type (struct waitq_link*) ;

__attribute__((used)) static int waitq_select_thread_cb(struct waitq *waitq, void *ctx,
      struct waitq_link *link)
{
 struct select_thread_ctx *stctx = (struct select_thread_ctx *)ctx;
 struct waitq_set *wqset;
 struct waitq *wqsetq;
 struct waitq *safeq;
 spl_t s;

 (void)waitq;

 thread_t thread = stctx->thread;
 event64_t event = stctx->event;

 if (wql_type(link) != WQL_WQS)
  return WQ_ITERATE_CONTINUE;

 wqset = link->wql_wqs.wql_set;
 wqsetq = &wqset->wqset_q;

 assert(!waitq_irq_safe(waitq));
 assert(!waitq_irq_safe(wqsetq));

 waitq_set_lock(wqset);

 s = splsched();


 safeq = waitq_get_safeq(wqsetq);
 waitq_lock(safeq);

 thread_lock(thread);

 if ((thread->waitq == wqsetq) && (thread->wait_event == event)) {
  waitq_thread_remove(wqsetq, thread);
  if (waitq_empty(safeq)) {
   safeq->waitq_eventmask = 0;
  }
  thread_clear_waitq_state(thread);
  waitq_unlock(safeq);
  waitq_set_unlock(wqset);




  *(stctx->spl) = s;
  return WQ_ITERATE_FOUND;
 }

 thread_unlock(thread);
 waitq_set_unlock(wqset);
 waitq_unlock(safeq);
 splx(s);

 return WQ_ITERATE_CONTINUE;
}
