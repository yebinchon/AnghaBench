
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ESR; int MSR; int TSR; int RF0R; int RF1R; } ;
typedef scalar_t__ FlagStatus ;
typedef TYPE_1__ CAN_TypeDef ;


 int CAN_FLAGS_ESR ;
 int CAN_FLAGS_MSR ;
 int CAN_FLAGS_RF0R ;
 int CAN_FLAGS_TSR ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
{
  FlagStatus bitstatus = RESET;


  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_GET_FLAG(CAN_FLAG));


  if((CAN_FLAG & CAN_FLAGS_ESR) != (uint32_t)RESET)
  {

    if ((CANx->ESR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    {

      bitstatus = SET;
    }
    else
    {

      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_MSR) != (uint32_t)RESET)
  {

    if ((CANx->MSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    {

      bitstatus = SET;
    }
    else
    {

      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_TSR) != (uint32_t)RESET)
  {

    if ((CANx->TSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    {

      bitstatus = SET;
    }
    else
    {

      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_RF0R) != (uint32_t)RESET)
  {

    if ((CANx->RF0R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    {

      bitstatus = SET;
    }
    else
    {

      bitstatus = RESET;
    }
  }
  else
  {

    if ((uint32_t)(CANx->RF1R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    {

      bitstatus = SET;
    }
    else
    {

      bitstatus = RESET;
    }
  }

  return bitstatus;
}
