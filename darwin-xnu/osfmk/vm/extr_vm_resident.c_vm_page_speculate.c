
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_18__ {int tv_sec; int tv_nsec; } ;
struct vm_speculative_age_q {int age_q; TYPE_15__ age_ts; } ;
struct TYPE_21__ {unsigned int tv_sec; int tv_nsec; } ;
typedef TYPE_3__ mach_timespec_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_22__ {int vm_page_speculative_q_age_ms; } ;
struct TYPE_20__ {scalar_t__ internal; int pages_created; } ;
struct TYPE_19__ {scalar_t__ vmp_q_state; int vmp_pageq; scalar_t__ vmp_fictitious; scalar_t__ vmp_private; scalar_t__ vmp_laundry; int vmp_unusual; scalar_t__ vmp_absent; } ;


 int ADD_MACH_TIMESPEC (TYPE_15__*,TYPE_3__*) ;
 scalar_t__ CMP_MACH_TIMESPEC (TYPE_3__*,TYPE_15__*) ;
 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NSEC_PER_USEC ;
 scalar_t__ TRUE ;
 int VM_PAGE_CHECK (TYPE_1__*) ;
 scalar_t__ VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 size_t VM_PAGE_MAX_SPECULATIVE_AGE_Q ;
 size_t VM_PAGE_MIN_SPECULATIVE_AGE_Q ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ;
 scalar_t__ VM_PAGE_ON_SPECULATIVE_Q ;
 scalar_t__ VM_PAGE_USED_BY_COMPRESSOR ;
 int VM_PAGE_WIRED (TYPE_1__*) ;
 int assert (int) ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 size_t speculative_age_index ;
 size_t speculative_steal_index ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 int vm_page_check_pageable_safe (TYPE_1__*) ;
 int vm_page_enqueue_tail (int *,int *) ;
 scalar_t__ vm_page_guard_addr ;
 int vm_page_pageable_external_count ;
 int vm_page_queue_empty (int *) ;
 int vm_page_queue_lock ;
 struct vm_speculative_age_q* vm_page_queue_speculative ;
 int vm_page_queues_remove (TYPE_1__*,scalar_t__) ;
 int vm_page_speculate_ageit (struct vm_speculative_age_q*) ;
 scalar_t__ vm_page_speculative_count ;
 int vm_page_speculative_created ;
 TYPE_4__ vm_pageout_state ;

void
vm_page_speculate(
 vm_page_t m,
 boolean_t new)
{
        struct vm_speculative_age_q *aq;
 vm_object_t m_object;

 m_object = VM_PAGE_OBJECT(m);

 VM_PAGE_CHECK(m);
 vm_page_check_pageable_safe(m);

 assert(VM_PAGE_GET_PHYS_PAGE(m) != vm_page_guard_addr);
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 assert( !(m->vmp_absent && !m->vmp_unusual));
 assert(m_object->internal == FALSE);
 if (m->vmp_laundry || m->vmp_private || m->vmp_fictitious ||
     (m->vmp_q_state == VM_PAGE_USED_BY_COMPRESSOR) ||
     (m->vmp_q_state == VM_PAGE_ON_PAGEOUT_Q))
  return;

 vm_page_queues_remove(m, FALSE);

 if ( !VM_PAGE_WIRED(m)) {
         mach_timespec_t ts;
  clock_sec_t sec;
  clock_nsec_t nsec;

         clock_get_system_nanotime(&sec, &nsec);
  ts.tv_sec = (unsigned int) sec;
  ts.tv_nsec = nsec;

  if (vm_page_speculative_count == 0) {

   speculative_age_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
   speculative_steal_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;

   aq = &vm_page_queue_speculative[speculative_age_index];




   aq->age_ts.tv_sec = vm_pageout_state.vm_page_speculative_q_age_ms / 1000;
   aq->age_ts.tv_nsec = (vm_pageout_state.vm_page_speculative_q_age_ms % 1000) * 1000 * NSEC_PER_USEC;
   ADD_MACH_TIMESPEC(&aq->age_ts, &ts);
  } else {
   aq = &vm_page_queue_speculative[speculative_age_index];

   if (CMP_MACH_TIMESPEC(&ts, &aq->age_ts) >= 0) {

           speculative_age_index++;

    if (speculative_age_index > VM_PAGE_MAX_SPECULATIVE_AGE_Q)
            speculative_age_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
    if (speculative_age_index == speculative_steal_index) {
            speculative_steal_index = speculative_age_index + 1;

     if (speculative_steal_index > VM_PAGE_MAX_SPECULATIVE_AGE_Q)
             speculative_steal_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
    }
    aq = &vm_page_queue_speculative[speculative_age_index];

    if (!vm_page_queue_empty(&aq->age_q))
            vm_page_speculate_ageit(aq);

    aq->age_ts.tv_sec = vm_pageout_state.vm_page_speculative_q_age_ms / 1000;
    aq->age_ts.tv_nsec = (vm_pageout_state.vm_page_speculative_q_age_ms % 1000) * 1000 * NSEC_PER_USEC;
    ADD_MACH_TIMESPEC(&aq->age_ts, &ts);
   }
  }
  vm_page_enqueue_tail(&aq->age_q, &m->vmp_pageq);
  m->vmp_q_state = VM_PAGE_ON_SPECULATIVE_Q;
  vm_page_speculative_count++;
  vm_page_pageable_external_count++;

  if (new == TRUE) {
   vm_object_lock_assert_exclusive(m_object);

          m_object->pages_created++;



  }
 }
 VM_PAGE_CHECK(m);
}
