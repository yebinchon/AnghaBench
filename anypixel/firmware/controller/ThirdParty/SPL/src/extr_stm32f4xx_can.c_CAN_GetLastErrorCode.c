
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ ESR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ CAN_ESR_LEC ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx)
{
  uint8_t errorcode=0;


  assert_param(IS_CAN_ALL_PERIPH(CANx));


  errorcode = (((uint8_t)CANx->ESR) & (uint8_t)CAN_ESR_LEC);


  return errorcode;
}
