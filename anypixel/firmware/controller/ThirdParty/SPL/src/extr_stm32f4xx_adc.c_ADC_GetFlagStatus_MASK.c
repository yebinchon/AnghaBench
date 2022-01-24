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
typedef  int uint8_t ;
struct TYPE_4__ {int SR; } ;
typedef  scalar_t__ FlagStatus ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC3(ADC_TypeDef* ADCx, uint8_t ADC_FLAG)
{
  FlagStatus bitstatus = RESET;
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(ADC_FLAG));

  /* Check the status of the specified ADC flag */
  if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
  {
    /* ADC_FLAG is set */
    bitstatus = SET;
  }
  else
  {
    /* ADC_FLAG is reset */
    bitstatus = RESET;
  }
  /* Return the ADC_FLAG status */
  return  bitstatus;
}