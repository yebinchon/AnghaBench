
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMORY_SetROM (int,int) ;
 scalar_t__ MEMORY_mem ;
 int MEMORY_ram_size ;
 scalar_t__ TRUE ;
 scalar_t__ cart809F_enabled ;
 int memcpy (int ,scalar_t__,int) ;
 int under_cart809F ;

void MEMORY_Cart809fEnable(void)
{
 if (!cart809F_enabled) {
  if (MEMORY_ram_size > 32) {
   memcpy(under_cart809F, MEMORY_mem + 0x8000, 0x2000);
   MEMORY_SetROM(0x8000, 0x9fff);
  }
  cart809F_enabled = TRUE;
 }
}
