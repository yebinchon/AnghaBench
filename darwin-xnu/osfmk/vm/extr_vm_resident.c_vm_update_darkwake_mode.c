
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 scalar_t__ TRUE ;
 scalar_t__ vm_darkwake_mode ;
 scalar_t__ vm_page_background_target ;
 scalar_t__ vm_page_background_target_snapshot ;
 int vm_page_lockspin_queues () ;
 int vm_page_queue_lock ;
 int vm_page_unlock_queues () ;

void
vm_update_darkwake_mode(boolean_t darkwake_mode)
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_NOTOWNED);

 vm_page_lockspin_queues();

 if (vm_darkwake_mode == darkwake_mode) {



  vm_page_unlock_queues();
  return;
 }

 vm_darkwake_mode = darkwake_mode;

 if (vm_darkwake_mode == TRUE) {
 } else if (vm_darkwake_mode == FALSE) {






 }
 vm_page_unlock_queues();
}
