
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CYCLES_GT (unsigned int,int) ;
 int SekCycleAim ;
 int SekSyncM68k () ;
 int pcd_sync_s68k (int,int ) ;

void pcd_run_cpus_lockstep(int m68k_cycles)
{
  unsigned int target = SekCycleAim + m68k_cycles;
  do {
    SekCycleAim += 8;
    SekSyncM68k();
    pcd_sync_s68k(SekCycleAim, 0);
  } while (CYCLES_GT(target, SekCycleAim));

  SekCycleAim = target;
}
