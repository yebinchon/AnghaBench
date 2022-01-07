
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef int vm_object_offset_t ;
typedef int vm_behavior_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int sequential; } ;
struct TYPE_9__ {scalar_t__ vmp_q_state; int vmp_absent; int vmp_fictitious; int vmp_no_cache; int vmp_busy; int vmp_laundry; } ;


 scalar_t__ FALSE ;
 int PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 int PMAP_OPTIONS_NOFLUSH ;
 scalar_t__ TRUE ;




 int VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER ;
 int VM_MEM_REFERENCED ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 scalar_t__ VM_PAGE_ON_THROTTLED_Q ;
 int dbgTrace (int,unsigned int,unsigned int) ;
 TYPE_2__* kernel_object ;
 int pmap_clear_refmod_options (int ,int ,int ,void*) ;
 int vm_default_behind ;
 scalar_t__ vm_page_deactivate_behind ;
 int vm_page_deactivate_behind_count ;
 int vm_page_deactivate_internal (TYPE_1__*,scalar_t__) ;
 int vm_page_lockspin_queues () ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,int) ;
 int vm_page_unlock_queues () ;

__attribute__((used)) static
boolean_t
vm_fault_deactivate_behind(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_behavior_t behavior)
{
 int n;
 int pages_in_run = 0;
 int max_pages_in_run = 0;
 int sequential_run;
 int sequential_behavior = 128;
 vm_object_offset_t run_offset = 0;
 vm_object_offset_t pg_offset = 0;
 vm_page_t m;
 vm_page_t page_run[VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER];

 pages_in_run = 0;




 if (object == kernel_object || vm_page_deactivate_behind == FALSE) {





  return FALSE;
 }
 if ((sequential_run = object->sequential)) {
    if (sequential_run < 0) {
            sequential_behavior = 129;
     sequential_run = 0 - sequential_run;
    } else {
            sequential_behavior = 128;
    }
 }
 switch (behavior) {
 case 130:
  break;
 case 128:
         if (sequential_run >= (int)PAGE_SIZE) {
   run_offset = 0 - PAGE_SIZE_64;
   max_pages_in_run = 1;
  }
  break;
 case 129:
         if (sequential_run >= (int)PAGE_SIZE) {
   run_offset = PAGE_SIZE_64;
   max_pages_in_run = 1;
  }
  break;
 case 131:
 default:
 { vm_object_offset_t behind = vm_default_behind * PAGE_SIZE_64;






  if ((uint64_t)sequential_run >= behind && (sequential_run % (VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER * PAGE_SIZE)) == 0) {





          if (sequential_behavior == 128) {
           if (offset >= behind) {
     run_offset = 0 - behind;
     pg_offset = PAGE_SIZE_64;
     max_pages_in_run = VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER;
    }
   } else {
           if (offset < -behind) {
     run_offset = behind;
     pg_offset = 0 - PAGE_SIZE_64;
     max_pages_in_run = VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER;
    }
   }
  }
  break;
 }
 }
        for (n = 0; n < max_pages_in_run; n++) {
  m = vm_page_lookup(object, offset + run_offset + (n * pg_offset));

  if (m && !m->vmp_laundry && !m->vmp_busy && !m->vmp_no_cache && (m->vmp_q_state != VM_PAGE_ON_THROTTLED_Q) && !m->vmp_fictitious && !m->vmp_absent) {
   page_run[pages_in_run++] = m;
   pmap_clear_refmod_options(VM_PAGE_GET_PHYS_PAGE(m), VM_MEM_REFERENCED, PMAP_OPTIONS_NOFLUSH, (void *)((void*)0));
  }
 }
 if (pages_in_run) {
  vm_page_lockspin_queues();

  for (n = 0; n < pages_in_run; n++) {

   m = page_run[n];

   vm_page_deactivate_internal(m, FALSE);

   vm_page_deactivate_behind_count++;



  }
  vm_page_unlock_queues();

  return TRUE;
 }
 return FALSE;
}
