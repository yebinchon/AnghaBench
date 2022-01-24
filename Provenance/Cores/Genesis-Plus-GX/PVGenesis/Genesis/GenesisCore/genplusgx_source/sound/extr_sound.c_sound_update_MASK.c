#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fm_preamp; scalar_t__ hq_fm; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** blips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ config ; 
 void* fm_buffer ; 
 int fm_cycles_count ; 
 scalar_t__ fm_cycles_ratio ; 
 int fm_cycles_start ; 
 int* fm_last ; 
 void* fm_ptr ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 TYPE_1__ snd ; 

int FUNC6(unsigned int cycles)
{
  int delta, preamp, time, l, r, *ptr;

  /* Run PSG & FM chips until end of frame */
  FUNC0(cycles);
  FUNC5(cycles);

	/* FM output pre-amplification */
  preamp = config.fm_preamp;

  /* FM frame initial timestamp */
  time = fm_cycles_start;

  /* Restore last FM outputs from previous frame */
  l = fm_last[0];
  r = fm_last[1];

  /* FM buffer start pointer */
  ptr = fm_buffer;

  /* flush FM samples */
  if (config.hq_fm)
  {
    /* high-quality Band-Limited synthesis */
    do
    {
      /* left channel */
      delta = ((*ptr++ * preamp) / 100) - l;
      l += delta;
      FUNC1(snd.blips[0][0], time, delta);
      
      /* right channel */
      delta = ((*ptr++ * preamp) / 100) - r;
      r += delta;
      FUNC1(snd.blips[0][1], time, delta);

      /* increment time counter */
      time += fm_cycles_ratio;
    }
    while (time < cycles);
  }
  else
  {
    /* faster Linear Interpolation */
    do
    {
      /* left channel */
      delta = ((*ptr++ * preamp) / 100) - l;
      l += delta;
      FUNC2(snd.blips[0][0], time, delta);
      
      /* right channel */
      delta = ((*ptr++ * preamp) / 100) - r;
      r += delta;
      FUNC2(snd.blips[0][1], time, delta);

      /* increment time counter */
      time += fm_cycles_ratio;
    }
    while (time < cycles);
  }

  /* reset FM buffer pointer */
  fm_ptr = fm_buffer;

  /* save last FM output for next frame */
  fm_last[0] = l;
  fm_last[1] = r;

  /* adjust FM cycle counters for next frame */
  fm_cycles_count = fm_cycles_start = time - cycles;
	
  /* end of blip buffers time frame */
  FUNC3(snd.blips[0][0], cycles);
  FUNC3(snd.blips[0][1], cycles);

  /* return number of available samples */
  return FUNC4(snd.blips[0][0]);
}