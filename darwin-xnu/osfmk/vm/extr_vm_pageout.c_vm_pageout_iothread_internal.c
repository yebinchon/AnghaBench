
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct cq {size_t id; } ;
struct TYPE_10__ {scalar_t__ pgo_inited; scalar_t__ pgo_lowpriority; int pgo_tid; } ;
struct TYPE_9__ {scalar_t__ vm_restricted_to_single_processor; } ;
struct TYPE_8__ {int * vmct_minpages; } ;
struct TYPE_7__ {int thread_id; int options; } ;


 int INT32_MAX ;
 int TH_OPT_VMPRIV ;
 scalar_t__ TRUE ;
 TYPE_1__* current_thread () ;
 int thread_set_thread_name (TYPE_1__*,char*) ;
 int thread_vm_bind_group_add () ;
 int vm_page_lock_queues () ;
 int vm_page_unlock_queues () ;
 int vm_pageout_iothread_internal_continue (struct cq*) ;
 TYPE_4__ vm_pageout_queue_internal ;
 TYPE_3__ vm_pageout_state ;
 TYPE_2__ vmct_stats ;

__attribute__((used)) static void
vm_pageout_iothread_internal(struct cq *cq)
{
 thread_t self = current_thread();

 self->options |= TH_OPT_VMPRIV;

 vm_page_lock_queues();

 vm_pageout_queue_internal.pgo_tid = self->thread_id;
 vm_pageout_queue_internal.pgo_lowpriority = TRUE;
 vm_pageout_queue_internal.pgo_inited = TRUE;

 vm_page_unlock_queues();

 if (vm_pageout_state.vm_restricted_to_single_processor == TRUE)
  thread_vm_bind_group_add();


 thread_set_thread_name(current_thread(), "VM_compressor");



 vm_pageout_iothread_internal_continue(cq);


}
