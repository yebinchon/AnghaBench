
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_TV_PAL ;
 int Atari800_builtin_basic ;
 int Atari800_builtin_game ;
 int Atari800_f_keys ;
 int Atari800_jumper ;
 int Atari800_keyboard_detached ;
 int Atari800_keyboard_leds ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ Atari800_tv_mode ;
 int StateSav_SaveUBYTE (int*,int) ;

void Atari800_StateSave(void)
{
 UBYTE temp = Atari800_tv_mode == Atari800_TV_PAL;
 StateSav_SaveUBYTE(&temp, 1);
 temp = Atari800_machine_type;
 StateSav_SaveUBYTE(&temp, 1);
 if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
  temp = Atari800_builtin_basic;
  StateSav_SaveUBYTE(&temp, 1);
  temp = Atari800_keyboard_leds;
  StateSav_SaveUBYTE(&temp, 1);
  temp = Atari800_f_keys;
  StateSav_SaveUBYTE(&temp, 1);
  temp = Atari800_jumper;
  StateSav_SaveUBYTE(&temp, 1);
  temp = Atari800_builtin_game;
  StateSav_SaveUBYTE(&temp, 1);
  temp = Atari800_keyboard_detached;
  StateSav_SaveUBYTE(&temp, 1);
 }
}
