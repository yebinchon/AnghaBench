
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* thread_t ;
typedef int queue_entry_t ;
typedef int * processor_set_t ;
typedef int kern_return_t ;
struct TYPE_4__ {scalar_t__ kernel_stack; int threads; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int * PROCESSOR_SET_NULL ;
 int assert (int) ;
 void* kalloc (unsigned int) ;
 int kernel_stack_size ;
 int kfree (void*,unsigned int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int pset0 ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 unsigned int round_page (int ) ;
 int tasks_threads_lock ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_reference_internal (TYPE_1__*) ;
 int threads ;
 unsigned int threads_count ;

kern_return_t
processor_set_stack_usage(
 processor_set_t pset,
 unsigned int *totalp,
 vm_size_t *spacep,
 vm_size_t *residentp,
 vm_size_t *maxusagep,
 vm_offset_t *maxstackp)
{

        return KERN_NOT_SUPPORTED;
}
