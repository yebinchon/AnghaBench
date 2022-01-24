#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ IER; scalar_t__ ISR; } ;
typedef  scalar_t__ ITStatus ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ITStatus FUNC3(ADC_TypeDef* ADCx, uint32_t ADC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;

  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(ADC_IT));

  /* Get the ADC_IT enable bit status */
  enablestatus = (uint32_t)(ADCx->IER & ADC_IT); 

  /* Check the status of the specified ADC interrupt */
  if (((uint32_t)(ADCx->ISR & ADC_IT) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
  {
    /* ADC_IT is set */
    bitstatus = SET;
  }
  else
  {
    /* ADC_IT is reset */
    bitstatus = RESET;
  }
  /* Return the ADC_IT status */
  return  bitstatus;
}