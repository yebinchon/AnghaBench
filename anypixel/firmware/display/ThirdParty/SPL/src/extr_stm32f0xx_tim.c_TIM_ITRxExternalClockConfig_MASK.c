#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  SMCR; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIM_SlaveMode_External1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{
  /* Check the parameters */
  FUNC3(FUNC1(TIMx));
  FUNC3(FUNC0(TIM_InputTriggerSource));
  /* Select the Internal Trigger */
  FUNC2(TIMx, TIM_InputTriggerSource);
  /* Select the External clock mode1 */
  TIMx->SMCR |= TIM_SlaveMode_External1;
}