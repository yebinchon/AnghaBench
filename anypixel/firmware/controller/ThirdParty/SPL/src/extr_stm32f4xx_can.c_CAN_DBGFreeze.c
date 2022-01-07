
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MCR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ DISABLE ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int MCR_DBF ;
 int assert_param (int ) ;

void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    CANx->MCR |= MCR_DBF;
  }
  else
  {

    CANx->MCR &= ~MCR_DBF;
  }
}
