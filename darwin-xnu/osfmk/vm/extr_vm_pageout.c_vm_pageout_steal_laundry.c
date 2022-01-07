
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_4__ {int vmp_free_when_done; } ;


 int FALSE ;
 int vm_page_lockspin_queues () ;
 int vm_page_unlock_queues () ;
 int vm_pageout_throttle_up (TYPE_1__*) ;

void
vm_pageout_steal_laundry(vm_page_t page, boolean_t queues_locked)
{
 if (!queues_locked) {
  vm_page_lockspin_queues();
 }

 page->vmp_free_when_done = FALSE;
 vm_pageout_throttle_up(page);

 if (!queues_locked) {
  vm_page_unlock_queues();
 }
}
