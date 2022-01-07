
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
struct TYPE_8__ {scalar_t__ cpu_id; } ;
struct TYPE_7__ {scalar_t__ sched_pri; scalar_t__ runq; TYPE_2__* bound_processor; } ;


 scalar_t__ BASEPRI_RTQUEUES ;
 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,uintptr_t,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_THREAD_BIND ;
 scalar_t__ PROCESSOR_NULL ;
 int assert (int) ;
 int thread_tid (TYPE_1__*) ;

__attribute__((used)) static processor_t
thread_bind_internal(
 thread_t thread,
 processor_t processor)
{
 processor_t prev;


 assert(thread->sched_pri < BASEPRI_RTQUEUES);

 assert(thread->runq == PROCESSOR_NULL);

 KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_THREAD_BIND), thread_tid(thread), processor ? (uintptr_t)processor->cpu_id : (uintptr_t)-1, 0, 0, 0);

 prev = thread->bound_processor;
 thread->bound_processor = processor;

 return (prev);
}
