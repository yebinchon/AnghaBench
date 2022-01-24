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
struct TYPE_2__ {int CR; int SR; } ;
typedef  scalar_t__ ITStatus ;

/* Variables and functions */
 TYPE_1__* DAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ITStatus FUNC3(uint32_t DAC_Channel, uint32_t DAC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;
  
  /* Check the parameters */
  FUNC2(FUNC0(DAC_Channel));
  FUNC2(FUNC1(DAC_IT));

  /* Get the DAC_IT enable bit status */
  enablestatus = (DAC->CR & (DAC_IT << DAC_Channel)) ;
  
  /* Check the status of the specified DAC interrupt */
  if (((DAC->SR & (DAC_IT << DAC_Channel)) != (uint32_t)RESET) && enablestatus)
  {
    /* DAC_IT is set */
    bitstatus = SET;
  }
  else
  {
    /* DAC_IT is reset */
    bitstatus = RESET;
  }
  /* Return the DAC_IT status */
  return  bitstatus;
}