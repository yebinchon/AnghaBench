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
typedef  int uint16_t ;
struct TYPE_4__ {int SMCR; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int SMCR_ETR_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter)
{
  uint16_t tmpsmcr = 0;
  
  /* Check the parameters */
  FUNC4(FUNC3(TIMx));
  FUNC4(FUNC2(TIM_ExtTRGPrescaler));
  FUNC4(FUNC1(TIM_ExtTRGPolarity));
  FUNC4(FUNC0(ExtTRGFilter));
  
  tmpsmcr = TIMx->SMCR;
  /* Reset the ETR Bits */
  tmpsmcr &= SMCR_ETR_MASK;
  /* Set the Prescaler, the Filter value and the Polarity */
  tmpsmcr |= (uint16_t)(TIM_ExtTRGPrescaler | (uint16_t)(TIM_ExtTRGPolarity | (uint16_t)(ExtTRGFilter << (uint16_t)8)));
  /* Write to TIMx SMCR */
  TIMx->SMCR = tmpsmcr;
}