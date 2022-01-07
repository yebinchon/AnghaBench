
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int need_sync; int m68k_poll_a; scalar_t__ m68k_poll_cnt; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__* Pico_mcd ;
 int SekCyclesDone () ;
 int SekEndRun (int) ;
 scalar_t__ SekNotPolling ;
 int pcd_sync_s68k (int ,int ) ;

void m68k_comm_check(u32 a)
{
  pcd_sync_s68k(SekCyclesDone(), 0);
  if (a >= 0x0e && !Pico_mcd->m.need_sync) {


    SekEndRun(64);
    Pico_mcd->m.need_sync = 1;
  }
  if (SekNotPolling || a != Pico_mcd->m.m68k_poll_a) {
    Pico_mcd->m.m68k_poll_a = a;
    Pico_mcd->m.m68k_poll_cnt = 0;
    SekNotPolling = 0;
    return;
  }
  Pico_mcd->m.m68k_poll_cnt++;
}
