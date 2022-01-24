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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  CR1; } ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  CR1_AWDCH_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx, uint8_t ADC_Channel)
{
  uint32_t tmpreg = 0;
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(ADC_Channel));
  
  /* Get the old register value */
  tmpreg = ADCx->CR1;
  
  /* Clear the Analog watchdog channel select bits */
  tmpreg &= CR1_AWDCH_RESET;
  
  /* Set the Analog watchdog channel */
  tmpreg |= ADC_Channel;
  
  /* Store the new register value */
  ADCx->CR1 = tmpreg;
}