
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ emu_checkSaveFile (int) ;
 int state_slot_flags ;

__attribute__((used)) static void state_check_slots(void)
{
 int slot;

 state_slot_flags = 0;

 for (slot = 0; slot < 10; slot++)
 {
  if (emu_checkSaveFile(slot))
  {
   state_slot_flags |= 1 << slot;
  }
 }
}
