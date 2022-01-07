
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int RF1R; int RF0R; } ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ CAN_FIFO0 ;
 int CAN_RF0R_RFOM0 ;
 int CAN_RF1R_RFOM1 ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_FIFO (scalar_t__) ;
 int assert_param (int ) ;

void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_FIFO(FIFONumber));

  if (FIFONumber == CAN_FIFO0)
  {
    CANx->RF0R |= CAN_RF0R_RFOM0;
  }

  else
  {
    CANx->RF1R |= CAN_RF1R_RFOM1;
  }
}
