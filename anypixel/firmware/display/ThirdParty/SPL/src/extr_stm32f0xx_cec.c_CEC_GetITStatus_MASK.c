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
typedef  int uint16_t ;
struct TYPE_2__ {int IER; int ISR; } ;
typedef  scalar_t__ ITStatus ;

/* Variables and functions */
 TYPE_1__* CEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ITStatus FUNC2(uint16_t CEC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;

  /* Check the parameters */
  FUNC1(FUNC0(CEC_IT));

  /* Get the CEC IT enable bit status */
  enablestatus = (CEC->IER & CEC_IT);

  /* Check the status of the specified CEC interrupt */
  if (((CEC->ISR & CEC_IT) != (uint32_t)RESET) && enablestatus)
  {
    /* CEC interrupt is set */
    bitstatus = SET;
  }
  else
  {
    /* CEC interrupt is reset */
    bitstatus = RESET;
  }

  /* Return the CEC interrupt status */
  return  bitstatus;
}