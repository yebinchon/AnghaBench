#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int TIM_OSSIState; int TIM_LOCKLevel; int TIM_Break; int TIM_BreakPolarity; int TIM_AutomaticOutput; int TIM_DeadTime; scalar_t__ TIM_OSSRState; } ;
struct TYPE_6__ {int BDTR; } ;
typedef  TYPE_1__ TIM_TypeDef ;
typedef  TYPE_2__ TIM_BDTRInitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct)
{
  /* Check the parameters */
  FUNC7(FUNC3(TIMx));
  FUNC7(FUNC6(TIM_BDTRInitStruct->TIM_OSSRState));
  FUNC7(FUNC5(TIM_BDTRInitStruct->TIM_OSSIState));
  FUNC7(FUNC4(TIM_BDTRInitStruct->TIM_LOCKLevel));
  FUNC7(FUNC2(TIM_BDTRInitStruct->TIM_Break));
  FUNC7(FUNC1(TIM_BDTRInitStruct->TIM_BreakPolarity));
  FUNC7(FUNC0(TIM_BDTRInitStruct->TIM_AutomaticOutput));

  /* Set the Lock level, the Break enable Bit and the Polarity, the OSSR State,
     the OSSI State, the dead time value and the Automatic Output Enable Bit */
  TIMx->BDTR = (uint32_t)TIM_BDTRInitStruct->TIM_OSSRState | TIM_BDTRInitStruct->TIM_OSSIState |
             TIM_BDTRInitStruct->TIM_LOCKLevel | TIM_BDTRInitStruct->TIM_DeadTime |
             TIM_BDTRInitStruct->TIM_Break | TIM_BDTRInitStruct->TIM_BreakPolarity |
             TIM_BDTRInitStruct->TIM_AutomaticOutput;
}