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
struct TYPE_4__ {scalar_t__ SMPR; scalar_t__ CHSELR; } ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 scalar_t__ ADC_SMPR1_SMPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(ADC_TypeDef* ADCx, uint32_t ADC_Channel, uint32_t ADC_SampleTime)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC3(FUNC0(ADCx));
  FUNC3(FUNC1(ADC_Channel));
  FUNC3(FUNC2(ADC_SampleTime));

  /* Configure the ADC Channel */
  ADCx->CHSELR |= (uint32_t)ADC_Channel;

  /* Clear the Sampling time Selection bits */
  tmpreg &= ~ADC_SMPR1_SMPR;

  /* Set the ADC Sampling Time register */
  tmpreg |= (uint32_t)ADC_SampleTime;

  /* Configure the ADC Sample time register */
  ADCx->SMPR = tmpreg ;
}