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
struct TYPE_4__ {int CCMR2; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ TIM_CCMR2_OC4M ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr2 = 0;

  /* Check the parameters */
  FUNC2(FUNC1(TIMx));
  FUNC2(FUNC0(TIM_ForcedAction));
  tmpccmr2 = TIMx->CCMR2;

  /* Reset the OC2M Bits */
  tmpccmr2 &= (uint16_t)~TIM_CCMR2_OC4M;

  /* Configure The Forced output Mode */
  tmpccmr2 |= (uint16_t)(TIM_ForcedAction << 8);

  /* Write to TIMx CCMR2 register */
  TIMx->CCMR2 = tmpccmr2;
}