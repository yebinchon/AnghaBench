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
struct TYPE_5__ {unsigned int update_cycles; TYPE_1__* ch; } ;
struct TYPE_6__ {TYPE_2__ pcm; } ;
struct TYPE_4__ {unsigned int addr; } ;

/* Variables and functions */
 unsigned int PCM_STEP_SHIFT ; 
 TYPE_3__* Pico_mcd ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

unsigned int FUNC2(unsigned int a)
{
  unsigned int d, cycles = FUNC0();
  if ((int)(cycles - Pico_mcd->pcm.update_cycles) >= 384)
    FUNC1(cycles);

  d = Pico_mcd->pcm.ch[(a >> 1) & 7].addr >> PCM_STEP_SHIFT;
  if (a & 1)
    d >>= 8;

  return d & 0xff;
}