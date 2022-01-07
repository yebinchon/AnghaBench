
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TA; int TB; int mode; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {int* REGS; TYPE_2__ OPN; } ;


 int EL_STATUS ;
 int EL_YMTIMER ;
 int POPT_EXT_FM ;
 int PicoOpt ;
 int TIMER_NO_OFLOW ;
 int YM2612PicoStateLoad () ;
 int YM2612PicoStateLoad2 (int*,int*) ;
 int YM2612PicoStateLoad2_940 (int*,int*) ;
 int elprintf (int ,char*,...) ;
 int timer_a_next_oflow ;
 double timer_a_step ;
 int timer_b_next_oflow ;
 double timer_b_step ;
 TYPE_3__ ym2612 ;
 int ym2612_write_local (int,int,int ) ;

void ym2612_unpack_state(void)
{
  int i, ret, tac, tat, tbc, tbt;
  YM2612PicoStateLoad();


  for (i = 0x20; i < 0xA0; i++) {
    ym2612_write_local(0, i, 0);
    ym2612_write_local(1, ym2612.REGS[i], 0);
  }
  for (i = 0x30; i < 0xA0; i++) {
    ym2612_write_local(2, i, 0);
    ym2612_write_local(3, ym2612.REGS[i|0x100], 0);
  }
  for (i = 0xAF; i >= 0xA0; i--) {
    ym2612_write_local(2, i, 0);
    ym2612_write_local(3, ym2612.REGS[i|0x100], 0);
    ym2612_write_local(0, i, 0);
    ym2612_write_local(1, ym2612.REGS[i], 0);
  }
  for (i = 0xB0; i < 0xB8; i++) {
    ym2612_write_local(0, i, 0);
    ym2612_write_local(1, ym2612.REGS[i], 0);
    ym2612_write_local(2, i, 0);
    ym2612_write_local(3, ym2612.REGS[i|0x100], 0);
  }






    ret = YM2612PicoStateLoad2(&tat, &tbt);
  if (ret != 0) {
    elprintf(EL_STATUS, "old ym2612 state");
    return;
  }

  tac = (1024 - ym2612.OPN.ST.TA) << 16;
  tbc = (256 - ym2612.OPN.ST.TB) << 16;
  if (ym2612.OPN.ST.mode & 1)
    timer_a_next_oflow = (int)((double)(tac - tat) / (double)tac * timer_a_step);
  else
    timer_a_next_oflow = TIMER_NO_OFLOW;
  if (ym2612.OPN.ST.mode & 2)
    timer_b_next_oflow = (int)((double)(tbc - tbt) / (double)tbc * timer_b_step);
  else
    timer_b_next_oflow = TIMER_NO_OFLOW;
  elprintf(EL_YMTIMER, "load: %i/%i, timer_a_next_oflow %i", tat>>16, tac>>16, timer_a_next_oflow >> 8);
  elprintf(EL_YMTIMER, "load: %i/%i, timer_b_next_oflow %i", tbt>>16, tbc>>16, timer_b_next_oflow >> 8);
}
