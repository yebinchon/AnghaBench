
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int timer_call_t ;
struct TYPE_6__ {int count; } ;
typedef TYPE_1__ mpqueue_head_t ;
struct TYPE_7__ {int queue; } ;


 TYPE_1__* MPQUEUE (int ) ;
 TYPE_3__* TCE (int ) ;
 int call_entry_dequeue (TYPE_3__*) ;

__attribute__((used)) static __inline__ mpqueue_head_t *
timer_call_entry_dequeue(
 timer_call_t entry)
{
 mpqueue_head_t *old_queue = MPQUEUE(TCE(entry)->queue);

 call_entry_dequeue(TCE(entry));
 old_queue->count--;

 return old_queue;
}
