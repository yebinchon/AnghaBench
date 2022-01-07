
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int MEMORY_SetRAM (int,int) ;
 int MEMORY_dFillMem (int,int,int) ;
 scalar_t__ MEMORY_mem ;
 int MEMORY_ram_size ;
 scalar_t__ cart809F_enabled ;
 int memcpy (scalar_t__,int ,int) ;
 int under_cart809F ;

void MEMORY_Cart809fDisable(void)
{
 if (cart809F_enabled) {
  if (MEMORY_ram_size > 32) {
   memcpy(MEMORY_mem + 0x8000, under_cart809F, 0x2000);
   MEMORY_SetRAM(0x8000, 0x9fff);
  }
  else
   MEMORY_dFillMem(0x8000, 0xff, 0x2000);
  cart809F_enabled = FALSE;
 }
}
