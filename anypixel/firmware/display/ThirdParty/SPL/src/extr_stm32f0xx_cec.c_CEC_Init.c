
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CFGR; } ;
struct TYPE_4__ {int CEC_SignalFreeTime; int CEC_RxTolerance; int CEC_StopReception; int CEC_BitRisingError; int CEC_LongBitPeriodError; int CEC_BRDNoGen; int CEC_SFTOption; } ;
typedef TYPE_1__ CEC_InitTypeDef ;


 TYPE_3__* CEC ;
 int CFGR_CLEAR_MASK ;
 int IS_CEC_BDR_NO_GEN_ERROR (int) ;
 int IS_CEC_BIT_RISING_ERROR (int) ;
 int IS_CEC_LONG_BIT_PERIOD_ERROR (int) ;
 int IS_CEC_RX_TOLERANCE (int) ;
 int IS_CEC_SFT_OPTION (int) ;
 int IS_CEC_SIGNAL_FREE_TIME (int) ;
 int IS_CEC_STOP_RECEPTION (int) ;
 int assert_param (int ) ;

void CEC_Init(CEC_InitTypeDef* CEC_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_CEC_SIGNAL_FREE_TIME(CEC_InitStruct->CEC_SignalFreeTime));
  assert_param(IS_CEC_RX_TOLERANCE(CEC_InitStruct->CEC_RxTolerance));
  assert_param(IS_CEC_STOP_RECEPTION(CEC_InitStruct->CEC_StopReception));
  assert_param(IS_CEC_BIT_RISING_ERROR(CEC_InitStruct->CEC_BitRisingError));
  assert_param(IS_CEC_LONG_BIT_PERIOD_ERROR(CEC_InitStruct->CEC_LongBitPeriodError));
  assert_param(IS_CEC_BDR_NO_GEN_ERROR(CEC_InitStruct->CEC_BRDNoGen));
  assert_param(IS_CEC_SFT_OPTION(CEC_InitStruct->CEC_SFTOption));


  tmpreg = CEC->CFGR;


  tmpreg &= CFGR_CLEAR_MASK;


  tmpreg |= (CEC_InitStruct->CEC_SignalFreeTime | CEC_InitStruct->CEC_RxTolerance |
             CEC_InitStruct->CEC_StopReception | CEC_InitStruct->CEC_BitRisingError |
             CEC_InitStruct->CEC_LongBitPeriodError| CEC_InitStruct->CEC_BRDNoGen |
             CEC_InitStruct->CEC_SFTOption);


  CEC->CFGR = tmpreg;
}
