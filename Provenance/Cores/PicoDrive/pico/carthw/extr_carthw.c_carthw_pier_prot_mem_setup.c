
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rom; scalar_t__ romsize; } ;


 int M68K_BANK_SIZE ;
 TYPE_1__ Pico ;
 scalar_t__ carthw_pier_prot_read8 ;
 int cpu68k_map_set (int ,int,int,scalar_t__,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;

__attribute__((used)) static void carthw_pier_prot_mem_setup(int prot_enable)
{
  if (prot_enable) {

    int a;
    for (a = 0x000000; a < 0x400000; a += M68K_BANK_SIZE) {
      cpu68k_map_set(m68k_read8_map, a, a + 0xffff, Pico.rom + Pico.romsize, 0);
      cpu68k_map_set(m68k_read16_map, a, a + 0xffff, Pico.rom + Pico.romsize, 0);
    }
    cpu68k_map_set(m68k_read8_map, M68K_BANK_SIZE, M68K_BANK_SIZE * 2 - 1,
      carthw_pier_prot_read8, 1);
  }
  else {
    cpu68k_map_set(m68k_read8_map, 0, 0x27ffff, Pico.rom, 0);
    cpu68k_map_set(m68k_read16_map, 0, 0x27ffff, Pico.rom, 0);
  }
}
