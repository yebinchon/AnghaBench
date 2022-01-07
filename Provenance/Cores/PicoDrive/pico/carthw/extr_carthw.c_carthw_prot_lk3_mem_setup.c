
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoRead8_plk3 ;
 int PicoWrite8_plk3b ;
 int PicoWrite8_plk3p ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read8_map ;
 int m68k_write8_map ;

__attribute__((used)) static void carthw_prot_lk3_mem_setup(void)
{
  cpu68k_map_set(m68k_read8_map, 0x600000, 0x7fffff, PicoRead8_plk3, 1);
  cpu68k_map_set(m68k_write8_map, 0x600000, 0x6fffff, PicoWrite8_plk3p, 1);
  cpu68k_map_set(m68k_write8_map, 0x700000, 0x7fffff, PicoWrite8_plk3b, 1);
}
