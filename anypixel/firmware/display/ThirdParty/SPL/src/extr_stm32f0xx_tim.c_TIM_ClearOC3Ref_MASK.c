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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CCMR2; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TIM_CCMR2_OC3CE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TIM_TypeDef* TIMx, uint16_t TIM_OCClear)
{
  uint16_t tmpccmr2 = 0;
  
  /* Check the parameters */
  FUNC2(FUNC0(TIMx));
  FUNC2(FUNC1(TIM_OCClear));
  
  tmpccmr2 = TIMx->CCMR2;
  /* Reset the OC3CE Bit */
  tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC3CE);
  /* Enable or Disable the Output Compare Clear Bit */
  tmpccmr2 |= TIM_OCClear;
  /* Write to TIMx CCMR2 register */
  TIMx->CCMR2 = tmpccmr2;
}