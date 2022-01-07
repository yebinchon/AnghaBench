
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pal; int z80_reset; scalar_t__ z80Run; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ dacen; } ;


 int PAHW_SMS ;
 int POPT_EN_Z80 ;
 TYPE_3__ Pico ;
 int PicoAHW ;
 int PicoOpt ;
 int PicoSyncZ80 (int) ;
 int PsndDacLine ;
 int PsndDoDAC (int) ;
 int PsndGetSamples (int) ;
 scalar_t__ PsndOut ;
 int emustatus ;
 int timers_cycle () ;
 TYPE_2__ ym2612 ;
 int z80_int () ;
 int z80_resetCycles () ;

void PDebugZ80Frame(void)
{
  int lines, line_sample;

  if (PicoAHW & PAHW_SMS)
    return;

  if (Pico.m.pal) {
    lines = 312;
    line_sample = 68;
  } else {
    lines = 262;
    line_sample = 93;
  }

  z80_resetCycles();
  emustatus &= ~1;

  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80))
    PicoSyncZ80(line_sample*488);
  if (ym2612.dacen && PsndDacLine <= line_sample)
    PsndDoDAC(line_sample);
  if (PsndOut)
    PsndGetSamples(line_sample);

  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80)) {
    PicoSyncZ80(224*488);
    z80_int();
  }
  if (ym2612.dacen && PsndDacLine <= 224)
    PsndDoDAC(224);
  if (PsndOut)
    PsndGetSamples(224);


  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80))
    PicoSyncZ80(Pico.m.pal ? 151809 : 127671);
  if (PsndOut && ym2612.dacen && PsndDacLine <= lines-1)
    PsndDoDAC(lines-1);

  timers_cycle();
}
