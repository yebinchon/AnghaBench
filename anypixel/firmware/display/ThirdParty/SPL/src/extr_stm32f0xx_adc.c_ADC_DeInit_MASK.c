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
typedef  int /*<<< orphan*/  ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/ * ADC1 ; 
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB2Periph_ADC1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx)
{
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));

  if(ADCx == ADC1)
  {
    /* Enable ADC1 reset state */
    FUNC1(RCC_APB2Periph_ADC1, ENABLE);

    /* Release ADC1 from reset state */
    FUNC1(RCC_APB2Periph_ADC1, DISABLE);
  }
}