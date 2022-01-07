
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 int* GTIA_TRIG ;
 int MEMORY_SetROM (int,int) ;
 scalar_t__ MEMORY_cartA0BF_enabled ;
 scalar_t__ MEMORY_mem ;
 int MEMORY_ram_size ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;
 scalar_t__ TRUE ;
 int * builtin_cart (int) ;
 int memcpy (int ,scalar_t__,int) ;
 int under_cartA0BF ;

void MEMORY_CartA0bfEnable(void)
{
 if (!MEMORY_cartA0BF_enabled) {


  if (MEMORY_ram_size > 40 && builtin_cart(PIA_PORTB | PIA_PORTB_mask) == ((void*)0)) {

   memcpy(under_cartA0BF, MEMORY_mem + 0xa000, 0x2000);
   MEMORY_SetROM(0xa000, 0xbfff);
  }
  MEMORY_cartA0BF_enabled = TRUE;
  if (Atari800_machine_type == Atari800_MACHINE_XLXE)
   GTIA_TRIG[3] = 1;
 }
}
