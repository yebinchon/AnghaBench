#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ TIM_ICPolarity; scalar_t__ TIM_ICSelection; scalar_t__ TIM_Channel; int /*<<< orphan*/  TIM_ICPrescaler; int /*<<< orphan*/  TIM_ICFilter; } ;
typedef  int /*<<< orphan*/  TIM_TypeDef ;
typedef  TYPE_1__ TIM_ICInitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TIM_Channel_1 ; 
 scalar_t__ TIM_ICPolarity_Falling ; 
 scalar_t__ TIM_ICPolarity_Rising ; 
 scalar_t__ TIM_ICSelection_DirectTI ; 
 scalar_t__ TIM_ICSelection_IndirectTI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{
  uint16_t icoppositepolarity = TIM_ICPolarity_Rising;
  uint16_t icoppositeselection = TIM_ICSelection_DirectTI;
  /* Check the parameters */
  FUNC5(FUNC0(TIMx));
  /* Select the Opposite Input Polarity */
  if (TIM_ICInitStruct->TIM_ICPolarity == TIM_ICPolarity_Rising)
  {
    icoppositepolarity = TIM_ICPolarity_Falling;
  }
  else
  {
    icoppositepolarity = TIM_ICPolarity_Rising;
  }
  /* Select the Opposite Input */
  if (TIM_ICInitStruct->TIM_ICSelection == TIM_ICSelection_DirectTI)
  {
    icoppositeselection = TIM_ICSelection_IndirectTI;
  }
  else
  {
    icoppositeselection = TIM_ICSelection_DirectTI;
  }
  if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
  {
    /* TI1 Configuration */
    FUNC1(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC3(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
    /* TI2 Configuration */
    FUNC2(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC4(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  { 
    /* TI2 Configuration */
    FUNC2(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC4(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
    /* TI1 Configuration */
    FUNC1(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC3(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}