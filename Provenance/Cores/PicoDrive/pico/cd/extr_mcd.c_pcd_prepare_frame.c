
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SekCycleAim ;
 int SekCycleAimS68k ;
 int mcd_m68k_cycle_base ;
 int mcd_s68k_cycle_base ;
 int pcd_set_cycle_mult () ;

void pcd_prepare_frame(void)
{
  pcd_set_cycle_mult();



  mcd_m68k_cycle_base = SekCycleAim;
  mcd_s68k_cycle_base = SekCycleAimS68k;
}
