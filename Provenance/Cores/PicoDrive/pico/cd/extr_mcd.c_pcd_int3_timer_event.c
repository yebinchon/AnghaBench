
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* s68k_regs; } ;


 int EL_CD ;
 int EL_INTS ;
 int PCDS_IEN3 ;
 int PCD_EVENT_TIMER3 ;
 TYPE_1__* Pico_mcd ;
 int SekInterruptS68k (int) ;
 int elprintf (int,char*) ;
 int pcd_event_schedule (unsigned int,int ,int) ;

__attribute__((used)) static void pcd_int3_timer_event(unsigned int now)
{
  if (Pico_mcd->s68k_regs[0x33] & PCDS_IEN3) {
    elprintf(EL_INTS|EL_CD, "s68k: timer irq 3");
    SekInterruptS68k(3);
  }

  if (Pico_mcd->s68k_regs[0x31] != 0)
    pcd_event_schedule(now, PCD_EVENT_TIMER3,
      Pico_mcd->s68k_regs[0x31] * 384);
}
