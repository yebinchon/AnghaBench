
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peri_regs; } ;


 int EL_32XP ;
 int PREG8 (int ,int) ;
 int elprintf (int ,char*,int,int) ;
 TYPE_1__* sh2s ;
 scalar_t__* timer_cycles ;
 int* timer_tick_cycles ;

void p32x_timers_recalc(void)
{
  int cycles;
  int tmp, i;


  for (i = 0; i < 2; i++) {
    tmp = PREG8(sh2s[i].peri_regs, 0x80) & 7;

    if (tmp)
      cycles = 0x20 << tmp;
    else
      cycles = 2;
    timer_tick_cycles[i] = cycles;
    timer_cycles[i] = 0;
    elprintf(EL_32XP, "WDT cycles[%d] = %d", i, cycles);
  }
}
