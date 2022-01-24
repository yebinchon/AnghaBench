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
struct TYPE_5__ {unsigned int update_cycles; size_t cur_ch; unsigned int bank; unsigned int control; unsigned int enabled; TYPE_1__* ch; } ;
struct TYPE_6__ {int pcm_regs_dirty; TYPE_2__ pcm; } ;
struct TYPE_4__ {unsigned int* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_CD ; 
 TYPE_3__* Pico_mcd ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void FUNC3(unsigned int a, unsigned int d)
{
  unsigned int cycles = FUNC0();
  if ((int)(cycles - Pico_mcd->pcm.update_cycles) >= 384)
    FUNC2(cycles);

  if (a < 7)
  {
    Pico_mcd->pcm.ch[Pico_mcd->pcm.cur_ch].regs[a] = d;
  }
  else if (a == 7) // control register
  {
    if (d & 0x40)
      Pico_mcd->pcm.cur_ch = d & 7;
    else
      Pico_mcd->pcm.bank = d & 0xf;
    Pico_mcd->pcm.control = d;
    FUNC1(EL_CD, "pcm control %02x", Pico_mcd->pcm.control);
  }
  else if (a == 8)
  {
    Pico_mcd->pcm.enabled = ~d;
  }
  Pico_mcd->pcm_regs_dirty = 1;
}