
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long mcd_m68k_cycle_mult ;

unsigned int pcd_cycles_m68k_to_s68k(unsigned int c)
{
  return (long long)c * mcd_m68k_cycle_mult >> 16;
}
