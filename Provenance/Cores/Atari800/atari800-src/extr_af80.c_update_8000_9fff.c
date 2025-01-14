
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MEMORY_mem ;
 scalar_t__ af80_rom ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int memset (scalar_t__,int,int) ;
 scalar_t__ not_right_cartridge_rd4_control ;
 scalar_t__ not_rom_output_enable ;
 int rom_bank_select ;

__attribute__((used)) static void update_8000_9fff(void)
{
 if (not_right_cartridge_rd4_control) return;
 if (not_rom_output_enable) {
  memset(MEMORY_mem + 0x8000, 0xff, 0x2000);
 }
 else {
  int i;
  for (i=0; i<32; i++) {
  memcpy(MEMORY_mem + 0x8000 + (i<<8), af80_rom + (rom_bank_select<<8), 0x100);
  }
 }
}
