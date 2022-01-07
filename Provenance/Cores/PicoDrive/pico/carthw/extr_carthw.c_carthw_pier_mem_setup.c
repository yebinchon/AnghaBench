
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_pier_read8 ;
 int carthw_pier_write16 ;
 int carthw_pier_write8 ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;

__attribute__((used)) static void carthw_pier_mem_setup(void)
{
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, carthw_pier_write8, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, carthw_pier_write16, 1);
  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, carthw_pier_read8, 1);
}
