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
struct TYPE_3__ {unsigned int update_cycles; } ;
struct TYPE_4__ {int pcm_regs_dirty; int* s68k_regs; TYPE_1__ pcm; scalar_t__ pcm_mixpos; scalar_t__ pcm_mixbuf_dirty; int /*<<< orphan*/  pcm_mixbuf; } ;

/* Variables and functions */
 size_t PCD_EVENT_CDC ; 
 size_t PCD_EVENT_TIMER3 ; 
 TYPE_2__* Pico_mcd ; 
 int /*<<< orphan*/  SekCycleAim ; 
 unsigned int SekCycleAimS68k ; 
 unsigned int SekCycleCntS68k ; 
 scalar_t__ event_time_next ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,size_t,int) ; 
 scalar_t__* pcd_event_times ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
  unsigned int cycles;
  int diff;

  FUNC4();
  FUNC5();

  FUNC0(Pico_mcd->pcm_mixbuf, 0, sizeof(Pico_mcd->pcm_mixbuf));
  Pico_mcd->pcm_mixbuf_dirty = 0;
  Pico_mcd->pcm_mixpos = 0;
  Pico_mcd->pcm_regs_dirty = 1;

  // old savestates..
  cycles = FUNC1(SekCycleAim);
  diff = cycles - SekCycleAimS68k;
  if (diff < -1000 || diff > 1000) {
    SekCycleCntS68k = SekCycleAimS68k = cycles;
  }
  if (pcd_event_times[PCD_EVENT_CDC] == 0) {
    FUNC2(SekCycleAimS68k, PCD_EVENT_CDC, 12500000/75);

    if (Pico_mcd->s68k_regs[0x31])
      FUNC2(SekCycleAimS68k, PCD_EVENT_TIMER3,
        Pico_mcd->s68k_regs[0x31] * 384);
  }

  diff = cycles - Pico_mcd->pcm.update_cycles;
  if ((unsigned int)diff > 12500000/50)
    Pico_mcd->pcm.update_cycles = cycles;

  // reschedule
  event_time_next = 0;
  FUNC3(SekCycleCntS68k);
}