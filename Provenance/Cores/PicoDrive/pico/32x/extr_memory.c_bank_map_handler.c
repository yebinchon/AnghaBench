
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoRead16_bank ;
 int PicoRead8_bank ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;

__attribute__((used)) static void bank_map_handler(void)
{
  cpu68k_map_set(m68k_read8_map, 0x900000, 0x9fffff, PicoRead8_bank, 1);
  cpu68k_map_set(m68k_read16_map, 0x900000, 0x9fffff, PicoRead16_bank, 1);
}
