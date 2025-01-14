
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busreq; scalar_t__ m68k_poll_cnt; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 scalar_t__ CYCLES_GE (unsigned int,unsigned int) ;
 scalar_t__ CYCLES_GT (unsigned int,unsigned int) ;
 int EL_CD ;
 TYPE_2__* Pico_mcd ;
 unsigned int SekCycleAimS68k ;
 unsigned int SekCycleCntS68k ;
 int SekRunS68k (unsigned int) ;
 int elprintf (int ,char*,unsigned int,unsigned int,unsigned int) ;
 unsigned int event_time_next ;
 unsigned int mcd_m68k_cycle_base ;
 unsigned long long mcd_m68k_cycle_mult ;
 unsigned long long mcd_s68k_cycle_base ;
 unsigned int now ;
 int pcd_run_events (unsigned int) ;

int pcd_sync_s68k(unsigned int m68k_target, int m68k_poll_sync)
{

  unsigned int s68k_target;
  unsigned int target;

  target = m68k_target - mcd_m68k_cycle_base;
  s68k_target = mcd_s68k_cycle_base +
    ((unsigned long long)target * mcd_m68k_cycle_mult >> 16);

  elprintf(EL_CD, "s68k sync to %u, %u->%u",
    m68k_target, SekCycleCntS68k, s68k_target);

  if (Pico_mcd->m.busreq != 1) {
    SekCycleCntS68k = SekCycleAimS68k = s68k_target;
    pcd_run_events(m68k_target);
    return 0;
  }

  while (CYCLES_GT(s68k_target, SekCycleCntS68k)) {
    if (event_time_next && CYCLES_GE(SekCycleCntS68k, event_time_next))
      pcd_run_events(SekCycleCntS68k);

    target = s68k_target;
    if (event_time_next && CYCLES_GT(target, event_time_next))
      target = event_time_next;

    SekRunS68k(target);
    if (m68k_poll_sync && Pico_mcd->m.m68k_poll_cnt == 0)
      break;
  }

  return s68k_target - SekCycleCntS68k;

}
