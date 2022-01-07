
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int ESR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 int CAN_ESR_REC ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx)
{
  uint8_t counter=0;


  assert_param(IS_CAN_ALL_PERIPH(CANx));


  counter = (uint8_t)((CANx->ESR & CAN_ESR_REC)>> 24);


  return counter;
}
