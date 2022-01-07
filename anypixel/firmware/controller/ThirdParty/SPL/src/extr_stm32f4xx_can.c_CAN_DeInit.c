
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_TypeDef ;


 int * CAN1 ;
 int DISABLE ;
 int ENABLE ;
 int IS_CAN_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_CAN1 ;
 int RCC_APB1Periph_CAN2 ;
 int assert_param (int ) ;

void CAN_DeInit(CAN_TypeDef* CANx)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));

  if (CANx == CAN1)
  {

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, ENABLE);

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, DISABLE);
  }
  else
  {

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, ENABLE);

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, DISABLE);
  }
}
