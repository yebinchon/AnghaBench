#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int IsM68KRunning ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ savedcycles ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void
FUNC3 (s32 cycles)
{
  s32 newcycles = savedcycles - cycles;
  if (FUNC0(IsM68KRunning))
    {
      if (FUNC0(newcycles < 0))
        {
          s32 cyclestoexec = -newcycles;
          newcycles += FUNC1)(cyclestoexec);
        }
      savedcycles = newcycles;
    }
}