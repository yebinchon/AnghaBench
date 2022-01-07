
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ sr_ref_count; int * sr_timer_call; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ thread_call_cancel (int *) ;
 int thread_call_free (int *) ;
 int vm_shared_region_lock ;

__attribute__((used)) static void
vm_shared_region_reference_locked(
 vm_shared_region_t shared_region)
{
 LCK_MTX_ASSERT(&vm_shared_region_lock, LCK_MTX_ASSERT_OWNED);

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> reference_locked(%p)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 assert(shared_region->sr_ref_count > 0);
 shared_region->sr_ref_count++;

 if (shared_region->sr_timer_call != ((void*)0)) {
  boolean_t cancelled;


  cancelled = thread_call_cancel(shared_region->sr_timer_call);
  if (cancelled) {
   thread_call_free(shared_region->sr_timer_call);
   shared_region->sr_timer_call = ((void*)0);

   shared_region->sr_ref_count--;
  } else {

  }
 }

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: reference_locked(%p) <- %d\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   shared_region->sr_ref_count));
}
