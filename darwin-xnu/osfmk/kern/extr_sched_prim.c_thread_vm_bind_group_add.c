
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_5__ {int options; } ;


 scalar_t__ MAX_VM_BIND_GROUP_COUNT ;
 int THREAD_CONTINUE_NULL ;
 int TH_OPT_SCHED_VM_GROUP ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int master_processor ;
 int sched_vm_group_list_lock ;
 scalar_t__ sched_vm_group_thread_count ;
 TYPE_1__** sched_vm_group_thread_list ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_bind (int ) ;
 int thread_block (int ) ;
 int thread_reference_internal (TYPE_1__*) ;

void
thread_vm_bind_group_add(void)
{
 thread_t self = current_thread();

 thread_reference_internal(self);
 self->options |= TH_OPT_SCHED_VM_GROUP;

 simple_lock(&sched_vm_group_list_lock);
 assert(sched_vm_group_thread_count < MAX_VM_BIND_GROUP_COUNT);
 sched_vm_group_thread_list[sched_vm_group_thread_count++] = self;
 simple_unlock(&sched_vm_group_list_lock);

 thread_bind(master_processor);


 thread_block(THREAD_CONTINUE_NULL);
}
