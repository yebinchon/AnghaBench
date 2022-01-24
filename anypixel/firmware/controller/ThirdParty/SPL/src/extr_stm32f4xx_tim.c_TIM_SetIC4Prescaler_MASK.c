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
 scalar_t__ TIM_CCMR2_IC4PSC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{  
  /* Check the parameters */
  FUNC2(FUNC1(TIMx));
  FUNC2(FUNC0(TIM_ICPSC));

  /* Reset the IC4PSC Bits */
  TIMx->CCMR2 &= (uint16_t)~TIM_CCMR2_IC4PSC;

  /* Set the IC4PSC value */
  TIMx->CCMR2 |= (uint16_t)(TIM_ICPSC << 8);
}