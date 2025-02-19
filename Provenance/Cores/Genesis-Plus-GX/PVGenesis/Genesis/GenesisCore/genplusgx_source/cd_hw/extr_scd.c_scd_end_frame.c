
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {unsigned int cycles; } ;
struct TYPE_8__ {scalar_t__ cycle; } ;
struct TYPE_13__ {TYPE_1__ poll; } ;
struct TYPE_9__ {scalar_t__ cycle; } ;
struct TYPE_12__ {unsigned int cycles; TYPE_2__ poll; } ;
struct TYPE_11__ {unsigned int stopwatch; TYPE_3__* regs; } ;
struct TYPE_10__ {int w; } ;


 unsigned int TIMERS_SCYCLES_RATIO ;
 TYPE_7__ gfx ;
 TYPE_6__ m68k ;
 TYPE_5__ s68k ;
 TYPE_4__ scd ;

void scd_end_frame(unsigned int cycles)
{

  int ticks = (cycles - scd.stopwatch) / TIMERS_SCYCLES_RATIO;
  scd.regs[0x0c>>1].w = (scd.regs[0x0c>>1].w + ticks) & 0xfff;


  scd.stopwatch += (ticks * TIMERS_SCYCLES_RATIO) - cycles;


  s68k.cycles -= cycles;
  gfx.cycles -= cycles;


  m68k.poll.cycle = 0;
  s68k.poll.cycle = 0;
}
