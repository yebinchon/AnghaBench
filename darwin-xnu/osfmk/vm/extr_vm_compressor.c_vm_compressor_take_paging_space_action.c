
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;


 scalar_t__ OSCompareAndSwap (int ,int,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ kill_on_no_paging_space ;
 int memorystatus_send_low_swap_note () ;
 scalar_t__ no_paging_space_action () ;
 scalar_t__ no_paging_space_action_in_progress ;

__attribute__((used)) static void
vm_compressor_take_paging_space_action(void)
{
 if (no_paging_space_action_in_progress == 0) {

  if (OSCompareAndSwap(0, 1, (UInt32 *)&no_paging_space_action_in_progress)) {

   if (no_paging_space_action()) {
    memorystatus_send_low_swap_note();
   }

   no_paging_space_action_in_progress = 0;
  }
 }
}
