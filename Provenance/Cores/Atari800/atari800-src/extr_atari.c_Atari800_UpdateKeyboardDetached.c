
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_keyboard_detached ;
 scalar_t__ Atari800_machine_type ;
 int GTIA_GRACTL ;
 int* GTIA_TRIG ;
 scalar_t__* GTIA_TRIG_latch ;

void Atari800_UpdateKeyboardDetached(void)
{
 if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
  GTIA_TRIG[2] = !Atari800_keyboard_detached;
  if (Atari800_keyboard_detached && (GTIA_GRACTL & 4))
    GTIA_TRIG_latch[2] = 0;
 }
}
