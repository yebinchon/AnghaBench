
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int IER; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ DISABLE ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_IT (int ) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_IT(CAN_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    CANx->IER |= CAN_IT;
  }
  else
  {

    CANx->IER &= ~CAN_IT;
  }
}
