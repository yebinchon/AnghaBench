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
struct TYPE_3__ {scalar_t__ TIM_Channel; int /*<<< orphan*/  TIM_ICPrescaler; int /*<<< orphan*/  TIM_ICFilter; int /*<<< orphan*/  TIM_ICSelection; int /*<<< orphan*/  TIM_ICPolarity; } ;
typedef  int /*<<< orphan*/  TIM_TypeDef ;
typedef  TYPE_1__ TIM_ICInitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TIM_Channel_1 ; 
 scalar_t__ TIM_Channel_2 ; 
 scalar_t__ TIM_Channel_3 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{
  /* Check the parameters */
  FUNC16(FUNC6(TIMx));
  FUNC16(FUNC0(TIM_ICInitStruct->TIM_Channel));  
  FUNC16(FUNC4(TIM_ICInitStruct->TIM_ICSelection));
  FUNC16(FUNC3(TIM_ICInitStruct->TIM_ICPrescaler));
  FUNC16(FUNC1(TIM_ICInitStruct->TIM_ICFilter));
  FUNC16(FUNC2(TIM_ICInitStruct->TIM_ICPolarity));

  if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
  {
    FUNC16(FUNC6(TIMx));
    /* TI1 Configuration */
    FUNC8(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC12(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_2)
  {
    FUNC16(FUNC7(TIMx));
    /* TI2 Configuration */
    FUNC9(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC13(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_3)
  {
    FUNC16(FUNC5(TIMx));
    /* TI3 Configuration */
    FUNC10(TIMx,  TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC14(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  {
    FUNC16(FUNC5(TIMx));
    /* TI4 Configuration */
    FUNC11(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
    /* Set the Input Capture Prescaler value */
    FUNC15(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}