
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_queue {int dummy; } ;
typedef scalar_t__ priority_queue_key_t ;
typedef int priority_queue_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 scalar_t__ priority_queue_entry_decrease (struct priority_queue*,int ,scalar_t__,int ) ;
 scalar_t__ priority_queue_entry_increase (struct priority_queue*,int ,scalar_t__,int ) ;
 scalar_t__ priority_queue_entry_key (struct priority_queue*,int ) ;
 scalar_t__ priority_queue_max_key (struct priority_queue*) ;

__attribute__((used)) static boolean_t
turnstile_priority_queue_update_entry_key(struct priority_queue *q,
  priority_queue_entry_t elt, priority_queue_key_t pri)
{
 priority_queue_key_t old_key = priority_queue_max_key(q);

 if (priority_queue_entry_key(q, elt) < pri) {
  if (priority_queue_entry_increase(q, elt, pri,
    PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
   return old_key != priority_queue_max_key(q);
  }
 } else if (priority_queue_entry_key(q, elt) > pri) {
  if (priority_queue_entry_decrease(q, elt, pri,
    PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
   return old_key != priority_queue_max_key(q);
  }
 }

 return FALSE;
}
