
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_Xin1_write8 ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int m68k_write8_map ;

__attribute__((used)) static void carthw_Xin1_mem_setup(void)
{
 cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, carthw_Xin1_write8, 1);
}
