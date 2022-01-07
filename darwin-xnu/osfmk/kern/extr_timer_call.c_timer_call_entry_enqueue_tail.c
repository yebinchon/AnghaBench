
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int timer_call_t ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ mpqueue_head_t ;


 int QUEUE (TYPE_1__*) ;
 int TCE (int ) ;
 int call_entry_enqueue_tail (int ,int ) ;

__attribute__((used)) static __inline__ void
timer_call_entry_enqueue_tail(
 timer_call_t entry,
 mpqueue_head_t *queue)
{
 call_entry_enqueue_tail(TCE(entry), QUEUE(queue));
 queue->count++;
 return;
}
