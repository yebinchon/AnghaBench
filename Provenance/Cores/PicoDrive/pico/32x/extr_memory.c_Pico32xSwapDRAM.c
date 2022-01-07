
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * dram; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_4__ {int addr; } ;


 int MAP_MEMORY (int ) ;
 TYPE_3__* Pico32xMem ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_dram0_ow ;
 int m68k_write16_dram1_ow ;
 int m68k_write16_map ;
 int m68k_write8_dram0_ow ;
 int m68k_write8_dram1_ow ;
 int m68k_write8_map ;
 TYPE_2__* sh2_read16_map ;
 TYPE_1__* sh2_read8_map ;
 int sh2_write16_dram0 ;
 int sh2_write16_dram1 ;
 int * sh2_write16_map ;
 int sh2_write8_dram0 ;
 int sh2_write8_dram1 ;
 int * sh2_write8_map ;

void Pico32xSwapDRAM(int b)
{
  cpu68k_map_set(m68k_read8_map, 0x840000, 0x85ffff, Pico32xMem->dram[b], 0);
  cpu68k_map_set(m68k_read16_map, 0x840000, 0x85ffff, Pico32xMem->dram[b], 0);
  cpu68k_map_set(m68k_read8_map, 0x860000, 0x87ffff, Pico32xMem->dram[b], 0);
  cpu68k_map_set(m68k_read16_map, 0x860000, 0x87ffff, Pico32xMem->dram[b], 0);
  cpu68k_map_set(m68k_write8_map, 0x840000, 0x87ffff,
                 b ? m68k_write8_dram1_ow : m68k_write8_dram0_ow, 1);
  cpu68k_map_set(m68k_write16_map, 0x840000, 0x87ffff,
                 b ? m68k_write16_dram1_ow : m68k_write16_dram0_ow, 1);


  sh2_read8_map[0x04/2].addr = sh2_read8_map[0x24/2].addr =
  sh2_read16_map[0x04/2].addr = sh2_read16_map[0x24/2].addr = MAP_MEMORY(Pico32xMem->dram[b]);

  sh2_write8_map[0x04/2] = sh2_write8_map[0x24/2] = b ? sh2_write8_dram1 : sh2_write8_dram0;
  sh2_write16_map[0x04/2] = sh2_write16_map[0x24/2] = b ? sh2_write16_dram1 : sh2_write16_dram0;
}
