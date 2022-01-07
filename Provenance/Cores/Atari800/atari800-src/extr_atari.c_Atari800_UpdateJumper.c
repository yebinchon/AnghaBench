
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_jumper ;
 scalar_t__ Atari800_machine_type ;
 int* POKEY_POT_input ;

void Atari800_UpdateJumper(void)
{
 if (Atari800_machine_type == Atari800_MACHINE_XLXE)
   POKEY_POT_input[4] = Atari800_jumper ? 0 : 228;
}
