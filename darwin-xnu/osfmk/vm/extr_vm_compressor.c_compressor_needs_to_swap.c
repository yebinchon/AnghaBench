
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef TYPE_1__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ c_creation_ts; } ;


 int COMPRESSOR_FREE_RESERVED_LIMIT ;
 scalar_t__ COMPRESSOR_NEEDS_TO_SWAP () ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ;
 scalar_t__ VM_PAGE_Q_THROTTLED (int *) ;
 int c_age_list_head ;
 int c_list_lock ;
 scalar_t__ c_overage_swapped_count ;
 scalar_t__ c_overage_swapped_limit ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 int compressor_thrashing_induced_jetsam ;
 int compute_swapout_target_age () ;
 int filecache_thrashing_induced_jetsam ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int memorystatus_kill_on_FC_thrashing (scalar_t__) ;
 int memorystatus_kill_on_VM_compressor_space_shortage (scalar_t__) ;
 int memorystatus_kill_on_VM_compressor_thrashing (scalar_t__) ;
 int queue_empty (int *) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ swapout_target_age ;
 scalar_t__ vm_compressor_low_on_space () ;
 scalar_t__ vm_compressor_needs_to_major_compact () ;
 scalar_t__ vm_compressor_thrashing_detected ;
 int vm_page_anonymous_count ;
 int vm_page_free_count ;
 int vm_page_free_reserved ;
 int vm_page_inactive_count ;
 int vm_pageout_queue_external ;
 scalar_t__ vm_phantom_cache_check_pressure () ;
 scalar_t__ vm_ripe_target_age ;
 scalar_t__ vm_swapout_ripe_segments ;

__attribute__((used)) static boolean_t
compressor_needs_to_swap(void)
{
 boolean_t should_swap = FALSE;

 if (vm_swapout_ripe_segments == TRUE && c_overage_swapped_count < c_overage_swapped_limit) {
  c_segment_t c_seg;
  clock_sec_t now;
  clock_sec_t age;
  clock_nsec_t nsec;

  clock_get_system_nanotime(&now, &nsec);
  age = 0;

  lck_mtx_lock_spin_always(c_list_lock);

  if ( !queue_empty(&c_age_list_head)) {
   c_seg = (c_segment_t) queue_first(&c_age_list_head);

   age = now - c_seg->c_creation_ts;
  }
  lck_mtx_unlock_always(c_list_lock);

  if (age >= vm_ripe_target_age)
   return (TRUE);
 }
 if (VM_CONFIG_SWAP_IS_ACTIVE) {
  if (COMPRESSOR_NEEDS_TO_SWAP()) {
   return (TRUE);
  }
  if (VM_PAGE_Q_THROTTLED(&vm_pageout_queue_external) && vm_page_anonymous_count < (vm_page_inactive_count / 20)) {
   return (TRUE);
  }
  if (vm_page_free_count < (vm_page_free_reserved - (COMPRESSOR_FREE_RESERVED_LIMIT * 2)))
   return (TRUE);
 }
 compute_swapout_target_age();

 if (swapout_target_age) {
  c_segment_t c_seg;

  lck_mtx_lock_spin_always(c_list_lock);

  if (!queue_empty(&c_age_list_head)) {

   c_seg = (c_segment_t) queue_first(&c_age_list_head);

   if (c_seg->c_creation_ts > swapout_target_age)
    swapout_target_age = 0;
  }
  lck_mtx_unlock_always(c_list_lock);
 }




 if (swapout_target_age)
  should_swap = TRUE;
 if (should_swap == FALSE) {
  should_swap = vm_compressor_needs_to_major_compact();
 }
 return (should_swap);
}
