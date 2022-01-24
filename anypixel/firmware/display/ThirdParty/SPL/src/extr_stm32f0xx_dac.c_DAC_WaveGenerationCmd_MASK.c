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
typedef  int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 TYPE_1__* DAC ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC3(FUNC0(DAC_Channel));
  FUNC3(FUNC1(DAC_Wave)); 
  FUNC3(FUNC2(NewState));

  if (NewState != DISABLE)
  {
    /* Enable the selected wave generation for the selected DAC channel */
    DAC->CR |= DAC_Wave << DAC_Channel;
  }
  else
  {
    /* Disable the selected wave generation for the selected DAC channel */
    DAC->CR &= ~(DAC_Wave << DAC_Channel);
  }
}