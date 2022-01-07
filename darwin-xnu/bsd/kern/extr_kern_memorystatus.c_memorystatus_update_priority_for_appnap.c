
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_9__ {int count; int list; } ;
typedef TYPE_2__ memstat_bucket_t ;
typedef size_t int32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int p_memstat_state; int p_listflag; size_t p_memstat_effectivepriority; size_t p_memstat_requestedpriority; scalar_t__ p_memstat_idle_start; int p_pid; scalar_t__ p_memstat_idle_delta; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_CHANGE_PRIORITY ;
 int DBG_BSD_MEMSTAT ;
 size_t JETSAM_PRIORITY_IDLE ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,size_t,size_t,int ,int ) ;
 int P_LIST_EXITED ;
 int P_MEMSTAT_ERROR ;
 int P_MEMSTAT_INTERNAL ;
 int P_MEMSTAT_MANAGED ;
 int P_MEMSTAT_TERMINATED ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int assert (int) ;
 int isApp (TYPE_1__*) ;
 scalar_t__ mach_absolute_time () ;
 TYPE_2__* memstat_bucket ;
 int p_memstat_list ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
memorystatus_update_priority_for_appnap(proc_t p, boolean_t is_appnap)
{

 if (!p || (!isApp(p)) || (p->p_memstat_state & (P_MEMSTAT_INTERNAL | P_MEMSTAT_MANAGED))) {
  return -1;
 }
 memstat_bucket_t *current_bucket, *new_bucket;
 int32_t priority = 0;

 proc_list_lock();

 if (((p->p_listflag & P_LIST_EXITED) != 0) ||
     (p->p_memstat_state & (P_MEMSTAT_ERROR | P_MEMSTAT_TERMINATED))) {





  proc_list_unlock();
  return(0);
 }

 if (is_appnap) {
  current_bucket = &memstat_bucket[p->p_memstat_effectivepriority];
  new_bucket = &memstat_bucket[JETSAM_PRIORITY_IDLE];
  priority = JETSAM_PRIORITY_IDLE;
 } else {
  if (p->p_memstat_effectivepriority != JETSAM_PRIORITY_IDLE) {





   proc_list_unlock();
   return (0);
  }

  current_bucket = &memstat_bucket[JETSAM_PRIORITY_IDLE];
  new_bucket = &memstat_bucket[p->p_memstat_requestedpriority];
  priority = p->p_memstat_requestedpriority;
 }

 TAILQ_REMOVE(&current_bucket->list, p, p_memstat_list);
 current_bucket->count--;

 TAILQ_INSERT_TAIL(&new_bucket->list, p, p_memstat_list);
 new_bucket->count++;




 if (p->p_memstat_effectivepriority == priority) {




 } else if (p->p_memstat_effectivepriority == JETSAM_PRIORITY_IDLE) {
  uint64_t now;




  assert(p->p_memstat_idle_start != 0);
  now = mach_absolute_time();
  if (now > p->p_memstat_idle_start) {
   p->p_memstat_idle_delta = now - p->p_memstat_idle_start;
  }
 } else if (priority == JETSAM_PRIORITY_IDLE) {




  p->p_memstat_idle_start = mach_absolute_time();
 }

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_CHANGE_PRIORITY), p->p_pid, priority, p->p_memstat_effectivepriority, 0, 0);

 p->p_memstat_effectivepriority = priority;

 proc_list_unlock();

 return (0);






}
