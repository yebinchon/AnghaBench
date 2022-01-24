#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rhythm; int noise_rng; int status; int /*<<< orphan*/ * P_CH; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* output ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ ym2413 ; 

void FUNC4(int *buffer, int length)
{
  int i, out;

  for( i=0; i < length ; i++ )
  {
    output[0] = 0;
    output[1] = 0;

    FUNC1();

    /* FM part */
    FUNC2(&ym2413.P_CH[0]);
    FUNC2(&ym2413.P_CH[1]);
    FUNC2(&ym2413.P_CH[2]);
    FUNC2(&ym2413.P_CH[3]);
    FUNC2(&ym2413.P_CH[4]);
    FUNC2(&ym2413.P_CH[5]);

    if(!(ym2413.rhythm&0x20))
    {
      FUNC2(&ym2413.P_CH[6]);
      FUNC2(&ym2413.P_CH[7]);
      FUNC2(&ym2413.P_CH[8]);
    }
    else    /* Rhythm part */
    {
      FUNC3(&ym2413.P_CH[0], (ym2413.noise_rng>>0)&1 );
    }

    /* Melody (MO) & Rythm (RO) outputs mixing & amplification (latched bit controls FM output) */
    out = (output[0] + (output[1] * 2)) * 2 * ym2413.status;

    /* Store to stereo sound buffer */
    *buffer++ = out;
    *buffer++ = out;

    FUNC0();
  }
}