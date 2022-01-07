
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* timer_call_t ;
typedef int spl_t ;
struct TYPE_11__ {int count; int head; } ;
typedef TYPE_2__ mpqueue_head_t ;
struct TYPE_12__ {int func; int entry_time; int deadline; } ;
struct TYPE_10__ {int soft_deadline; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_NONE ;
 int DBG_FUNC_START ;
 int DECR_TIMER_QUEUE ;
 int KDEBUG_TRACE ;
 TYPE_8__* TCE (TYPE_1__*) ;
 TYPE_1__* TIMER_CALL (int ) ;
 int TIMER_KDEBUG_TRACE (int ,int,int ,int ,int ,int ,int ) ;
 int VM_KERNEL_UNSLIDE (int ) ;
 int kdebug_enable ;
 int mach_absolute_time () ;
 int qe (TYPE_1__*) ;
 int queue_empty (int *) ;
 int queue_end (int *,int ) ;
 int queue_first (int *) ;
 int queue_next (int ) ;
 int splclock () ;
 int splx (int ) ;
 int timer_queue_lock_spin (TYPE_2__*) ;
 int timer_queue_unlock (TYPE_2__*) ;

void
timer_queue_trace(
 mpqueue_head_t *queue)
{
 timer_call_t call;
 spl_t s;

 if (!kdebug_enable)
  return;

 s = splclock();
 timer_queue_lock_spin(queue);

 TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
         DECR_TIMER_QUEUE | DBG_FUNC_START,
  queue->count, mach_absolute_time(), 0, 0, 0);

 if (!queue_empty(&queue->head)) {
  call = TIMER_CALL(queue_first(&queue->head));
  do {
   TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
           DECR_TIMER_QUEUE | DBG_FUNC_NONE,
    call->soft_deadline,
    TCE(call)->deadline,
    TCE(call)->entry_time,
    VM_KERNEL_UNSLIDE(TCE(call)->func),
    0);
   call = TIMER_CALL(queue_next(qe(call)));
  } while (!queue_end(&queue->head, qe(call)));
 }

 TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
         DECR_TIMER_QUEUE | DBG_FUNC_END,
  queue->count, mach_absolute_time(), 0, 0, 0);

 timer_queue_unlock(queue);
 splx(s);
}
