
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoMemSetup () ;
 int PicoRead16_pico ;
 int PicoRead8_pico ;
 int PicoWrite16_pico ;
 int PicoWrite8_pico ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_map_unmap (int,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;

void PicoMemSetupPico(void)
{
  PicoMemSetup();


  m68k_map_unmap(0x400000, 0xbfffff);


  cpu68k_map_set(m68k_read8_map, 0x800000, 0x80ffff, PicoRead8_pico, 1);
  cpu68k_map_set(m68k_read16_map, 0x800000, 0x80ffff, PicoRead16_pico, 1);
  cpu68k_map_set(m68k_write8_map, 0x800000, 0x80ffff, PicoWrite8_pico, 1);
  cpu68k_map_set(m68k_write16_map, 0x800000, 0x80ffff, PicoWrite16_pico, 1);
}
