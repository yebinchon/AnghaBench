#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  SMCR; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TIM_ICSelection_DirectTI ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  TIM_SlaveMode_External1 ; 
 scalar_t__ TIM_TIxExternalCLK1Source_TI2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter)
{
  /* Check the parameters */
  FUNC6(FUNC2(TIMx));
  FUNC6(FUNC1(TIM_ICPolarity));
  FUNC6(FUNC0(ICFilter));

  /* Configure the Timer Input Clock Source */
  if (TIM_TIxExternalCLKSource == TIM_TIxExternalCLK1Source_TI2)
  {
    FUNC4(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
  }
  else
  {
    FUNC3(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
  }
  /* Select the Trigger source */
  FUNC5(TIMx, TIM_TIxExternalCLKSource);
  /* Select the External clock mode1 */
  TIMx->SMCR |= TIM_SlaveMode_External1;
}