
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ESR; int RF0R; int RF1R; int TSR; int MSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 int CAN_FLAGS_RF0R ;
 int CAN_FLAGS_RF1R ;
 int CAN_FLAGS_TSR ;
 int CAN_FLAG_LEC ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_CLEAR_FLAG (int) ;
 scalar_t__ RESET ;
 int assert_param (int ) ;

void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
{
  uint32_t flagtmp=0;

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_CLEAR_FLAG(CAN_FLAG));

  if (CAN_FLAG == CAN_FLAG_LEC)
  {

    CANx->ESR = (uint32_t)RESET;
  }
  else
  {
    flagtmp = CAN_FLAG & 0x000FFFFF;

    if ((CAN_FLAG & CAN_FLAGS_RF0R)!=(uint32_t)RESET)
    {

      CANx->RF0R = (uint32_t)(flagtmp);
    }
    else if ((CAN_FLAG & CAN_FLAGS_RF1R)!=(uint32_t)RESET)
    {

      CANx->RF1R = (uint32_t)(flagtmp);
    }
    else if ((CAN_FLAG & CAN_FLAGS_TSR)!=(uint32_t)RESET)
    {

      CANx->TSR = (uint32_t)(flagtmp);
    }
    else
    {

      CANx->MSR = (uint32_t)(flagtmp);
    }
  }
}
