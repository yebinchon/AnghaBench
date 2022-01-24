#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int CFGR; } ;
struct TYPE_4__ {int CEC_SignalFreeTime; int CEC_RxTolerance; int CEC_StopReception; int CEC_BitRisingError; int CEC_LongBitPeriodError; int CEC_BRDNoGen; int CEC_SFTOption; } ;
typedef  TYPE_1__ CEC_InitTypeDef ;

/* Variables and functions */
 TYPE_3__* CEC ; 
 int CFGR_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(CEC_InitTypeDef* CEC_InitStruct)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC7(FUNC5(CEC_InitStruct->CEC_SignalFreeTime));
  FUNC7(FUNC3(CEC_InitStruct->CEC_RxTolerance));
  FUNC7(FUNC6(CEC_InitStruct->CEC_StopReception));
  FUNC7(FUNC1(CEC_InitStruct->CEC_BitRisingError));
  FUNC7(FUNC2(CEC_InitStruct->CEC_LongBitPeriodError));
  FUNC7(FUNC0(CEC_InitStruct->CEC_BRDNoGen));
  FUNC7(FUNC4(CEC_InitStruct->CEC_SFTOption));

  /* Get the CEC CFGR value */
  tmpreg = CEC->CFGR;

  /* Clear CFGR bits */
  tmpreg &= CFGR_CLEAR_MASK;

  /* Configure the CEC peripheral */
  tmpreg |= (CEC_InitStruct->CEC_SignalFreeTime | CEC_InitStruct->CEC_RxTolerance |
             CEC_InitStruct->CEC_StopReception  | CEC_InitStruct->CEC_BitRisingError |
             CEC_InitStruct->CEC_LongBitPeriodError| CEC_InitStruct->CEC_BRDNoGen |
             CEC_InitStruct->CEC_SFTOption);

  /* Write to CEC CFGR  register */
  CEC->CFGR = tmpreg;
}