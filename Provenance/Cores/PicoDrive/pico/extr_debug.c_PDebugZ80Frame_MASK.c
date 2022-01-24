#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pal; int /*<<< orphan*/  z80_reset; scalar_t__ z80Run; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ dacen; } ;

/* Variables and functions */
 int PAHW_SMS ; 
 int POPT_EN_Z80 ; 
 TYPE_3__ Pico ; 
 int PicoAHW ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PsndDacLine ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ PsndOut ; 
 int emustatus ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ ym2612 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
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

  FUNC5();
  emustatus &= ~1;

  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80))
    FUNC0(line_sample*488);
  if (ym2612.dacen && PsndDacLine <= line_sample)
    FUNC1(line_sample);
  if (PsndOut)
    FUNC2(line_sample);

  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80)) {
    FUNC0(224*488);
    FUNC4();
  }
  if (ym2612.dacen && PsndDacLine <= 224)
    FUNC1(224);
  if (PsndOut)
    FUNC2(224);

  // sync z80
  if (Pico.m.z80Run && !Pico.m.z80_reset && (PicoOpt&POPT_EN_Z80))
    FUNC0(Pico.m.pal ? 151809 : 127671); // cycles adjusted for converter
  if (PsndOut && ym2612.dacen && PsndDacLine <= lines-1)
    FUNC1(lines-1);

  FUNC3();
}