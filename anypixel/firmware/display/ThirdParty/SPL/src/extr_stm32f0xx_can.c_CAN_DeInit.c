
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int IS_CAN_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_CAN ;
 int assert_param (int ) ;

void CAN_DeInit(CAN_TypeDef* CANx)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));


  RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN, ENABLE);

  RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN, DISABLE);
}
