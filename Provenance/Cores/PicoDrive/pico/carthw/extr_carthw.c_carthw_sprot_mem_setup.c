
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int romsize; } ;


 int M68K_BANK_MASK ;
 TYPE_1__ Pico ;
 int PicoRead16_sprot ;
 int PicoRead8_sprot ;
 int PicoWrite16_sprot ;
 int PicoWrite8_sprot ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;

__attribute__((used)) static void carthw_sprot_mem_setup(void)
{
  int start;


  start = (Pico.romsize + M68K_BANK_MASK) & ~M68K_BANK_MASK;
  cpu68k_map_set(m68k_read8_map, start, 0x7fffff, PicoRead8_sprot, 1);
  cpu68k_map_set(m68k_read16_map, start, 0x7fffff, PicoRead16_sprot, 1);
  cpu68k_map_set(m68k_write8_map, start, 0x7fffff, PicoWrite8_sprot, 1);
  cpu68k_map_set(m68k_write16_map, start, 0x7fffff, PicoWrite16_sprot, 1);

  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, PicoRead8_sprot, 1);
  cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, PicoRead16_sprot, 1);
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, PicoWrite8_sprot, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, PicoWrite16_sprot, 1);
}
