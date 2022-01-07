
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int I2C_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int * I2C1 ;
 int IS_I2C_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_I2C1 ;
 int RCC_APB1Periph_I2C2 ;
 int assert_param (int ) ;

void I2C_DeInit(I2C_TypeDef* I2Cx)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));

  if (I2Cx == I2C1)
  {

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, ENABLE);

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, DISABLE);
  }
  else
  {

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, ENABLE);

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, DISABLE);
  }
}
