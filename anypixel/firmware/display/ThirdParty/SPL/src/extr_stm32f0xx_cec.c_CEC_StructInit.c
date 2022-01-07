
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CEC_SFTOption; int CEC_BRDNoGen; int CEC_LongBitPeriodError; int CEC_BitRisingError; int CEC_StopReception; int CEC_RxTolerance; int CEC_SignalFreeTime; } ;
typedef TYPE_1__ CEC_InitTypeDef ;


 int CEC_BRDNoGen_Off ;
 int CEC_BitRisingError_Off ;
 int CEC_LongBitPeriodError_Off ;
 int CEC_RxTolerance_Standard ;
 int CEC_SFTOption_Off ;
 int CEC_SignalFreeTime_Standard ;
 int CEC_StopReception_Off ;

void CEC_StructInit(CEC_InitTypeDef* CEC_InitStruct)
{
  CEC_InitStruct->CEC_SignalFreeTime = CEC_SignalFreeTime_Standard;
  CEC_InitStruct->CEC_RxTolerance = CEC_RxTolerance_Standard;
  CEC_InitStruct->CEC_StopReception = CEC_StopReception_Off;
  CEC_InitStruct->CEC_BitRisingError = CEC_BitRisingError_Off;
  CEC_InitStruct->CEC_LongBitPeriodError = CEC_LongBitPeriodError_Off;
  CEC_InitStruct->CEC_BRDNoGen = CEC_BRDNoGen_Off;
  CEC_InitStruct->CEC_SFTOption = CEC_SFTOption_Off;
}
