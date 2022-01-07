
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ FALSE ;
 int GTIA_GRACTL ;
 scalar_t__* GTIA_TRIG ;
 scalar_t__* GTIA_TRIG_latch ;
 int MEMORY_SetRAM (int,int) ;
 scalar_t__ MEMORY_cartA0BF_enabled ;
 int MEMORY_dFillMem (int,int,int) ;
 scalar_t__ MEMORY_mem ;
 int MEMORY_ram_size ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;
 int * builtin_cart (int) ;
 int memcpy (scalar_t__,int const*,int) ;
 int const* under_cartA0BF ;

void MEMORY_CartA0bfDisable(void)
{
 if (MEMORY_cartA0BF_enabled) {


  UBYTE const *builtin = builtin_cart(PIA_PORTB | PIA_PORTB_mask);
  if (builtin == ((void*)0)) {
   if (MEMORY_ram_size > 40) {
    memcpy(MEMORY_mem + 0xa000, under_cartA0BF, 0x2000);
    MEMORY_SetRAM(0xa000, 0xbfff);
   }
   else
    MEMORY_dFillMem(0xa000, 0xff, 0x2000);
  }
  else
   memcpy(MEMORY_mem + 0xa000, builtin, 0x2000);
  MEMORY_cartA0BF_enabled = FALSE;
  if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
   GTIA_TRIG[3] = 0;
   if (GTIA_GRACTL & 4)
    GTIA_TRIG_latch[3] = 0;
  }
 }
}
