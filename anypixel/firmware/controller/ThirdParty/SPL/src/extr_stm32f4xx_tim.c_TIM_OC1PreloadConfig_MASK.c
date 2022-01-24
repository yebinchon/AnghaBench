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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  CCMR1; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TIM_CCMR1_OC1PE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr1 = 0;

  /* Check the parameters */
  FUNC2(FUNC0(TIMx));
  FUNC2(FUNC1(TIM_OCPreload));

  tmpccmr1 = TIMx->CCMR1;

  /* Reset the OC1PE Bit */
  tmpccmr1 &= (uint16_t)(~TIM_CCMR1_OC1PE);

  /* Enable or Disable the Output Compare Preload feature */
  tmpccmr1 |= TIM_OCPreload;

  /* Write to TIMx CCMR1 register */
  TIMx->CCMR1 = tmpccmr1;
}