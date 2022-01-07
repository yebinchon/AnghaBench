
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dram; } ;


 int PicoRead16_svpca1 ;
 int PicoRead16_svpca2 ;
 int PicoRead16_svpr ;
 int PicoRead8_svpr ;
 int PicoWrite16_dram ;
 int PicoWrite16_svpr ;
 int PicoWrite8_io ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;
 TYPE_1__* svp ;

void PicoSVPMemSetup(void)
{


  cpu68k_map_set(m68k_read8_map, 0x300000, 0x31ffff, svp->dram, 0);
  cpu68k_map_set(m68k_read16_map, 0x300000, 0x31ffff, svp->dram, 0);
  cpu68k_map_set(m68k_write8_map, 0x300000, 0x31ffff, svp->dram, 0);
  cpu68k_map_set(m68k_write16_map, 0x300000, 0x31ffff, svp->dram, 0);
  cpu68k_map_set(m68k_write16_map, 0x300000, 0x30ffff, PicoWrite16_dram, 1);


  cpu68k_map_set(m68k_read16_map, 0x390000, 0x39ffff, PicoRead16_svpca1, 1);
  cpu68k_map_set(m68k_read16_map, 0x3a0000, 0x3affff, PicoRead16_svpca2, 1);


  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, PicoRead8_svpr, 1);
  cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, PicoRead16_svpr, 1);
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, PicoWrite8_io, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, PicoWrite16_svpr, 1);
}
