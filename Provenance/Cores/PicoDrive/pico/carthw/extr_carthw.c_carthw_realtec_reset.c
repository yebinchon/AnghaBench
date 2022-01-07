
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ romsize; scalar_t__ rom; } ;


 scalar_t__ M68K_BANK_SIZE ;
 TYPE_1__ Pico ;
 scalar_t__ carthw_realtec_write8 ;
 int cpu68k_map_set (int ,int,scalar_t__,scalar_t__,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write8_map ;
 int realtec_bank ;
 int realtec_size ;

__attribute__((used)) static void carthw_realtec_reset(void)
{
 int i;


 for (i = 0; i < 0x400000; i += M68K_BANK_SIZE) {
  cpu68k_map_set(m68k_read8_map, i, i + M68K_BANK_SIZE - 1, Pico.rom + Pico.romsize, 0);
  cpu68k_map_set(m68k_read16_map, i, i + M68K_BANK_SIZE - 1, Pico.rom + Pico.romsize, 0);
 }
 cpu68k_map_set(m68k_write8_map, 0x400000, 0x400000 + M68K_BANK_SIZE - 1, carthw_realtec_write8, 1);
 realtec_bank = realtec_size = 0x80000000;
}
