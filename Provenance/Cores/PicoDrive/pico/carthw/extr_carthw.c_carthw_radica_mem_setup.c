
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_radica_read16 ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_read16_map ;

__attribute__((used)) static void carthw_radica_mem_setup(void)
{
 cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, carthw_radica_read16, 1);
}
