
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* timer_call_t ;
struct TYPE_9__ {int count; } ;
typedef TYPE_2__ mpqueue_head_t ;
struct TYPE_10__ {int queue; } ;
struct TYPE_8__ {int async_dequeue; } ;


 TYPE_2__* MPQUEUE (int ) ;
 TYPE_5__* TCE (TYPE_1__*) ;
 int TRUE ;
 int qe (TYPE_1__*) ;
 int remque (int ) ;

__attribute__((used)) static __inline__ void
timer_call_entry_dequeue_async(
 timer_call_t entry)
{
 mpqueue_head_t *old_queue = MPQUEUE(TCE(entry)->queue);
 if (old_queue) {
  old_queue->count--;
  (void) remque(qe(entry));
  entry->async_dequeue = TRUE;
 }
 return;
}
