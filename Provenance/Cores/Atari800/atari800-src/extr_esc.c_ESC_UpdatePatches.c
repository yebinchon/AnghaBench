
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_MACHINE_800 ;
 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 int Devices_UpdatePatches () ;
 int ESC_PatchOS () ;
 int MEMORY_dCopyToMem (scalar_t__,int const,int) ;
 scalar_t__ MEMORY_os ;
 int PIA_PORTB ;

void ESC_UpdatePatches(void)
{

 if (Atari800_machine_type != Atari800_MACHINE_5200 &&
     (Atari800_machine_type != Atari800_MACHINE_XLXE || (PIA_PORTB & 1) != 0)) {
  int const os_rom_start = Atari800_machine_type == Atari800_MACHINE_800 ? 0xd800 : 0xc000;

  if (os_rom_start < 0xd000)
   MEMORY_dCopyToMem(MEMORY_os, os_rom_start, 0xd000 - os_rom_start);
  MEMORY_dCopyToMem(MEMORY_os + 0xd800 - os_rom_start, 0xd800, 0x2800);

  ESC_PatchOS();
  Devices_UpdatePatches();
 }
}
