
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPIO_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int * GPIOA ;
 int * GPIOB ;
 int * GPIOC ;
 int * GPIOD ;
 int * GPIOE ;
 int * GPIOF ;
 int IS_GPIO_ALL_PERIPH (int *) ;
 int RCC_AHBPeriphResetCmd (int ,int ) ;
 int RCC_AHBPeriph_GPIOA ;
 int RCC_AHBPeriph_GPIOB ;
 int RCC_AHBPeriph_GPIOC ;
 int RCC_AHBPeriph_GPIOD ;
 int RCC_AHBPeriph_GPIOE ;
 int RCC_AHBPeriph_GPIOF ;
 int assert_param (int ) ;

void GPIO_DeInit(GPIO_TypeDef* GPIOx)
{

  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));

  if(GPIOx == GPIOA)
  {
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOA, ENABLE);
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOA, DISABLE);
  }
  else if(GPIOx == GPIOB)
  {
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOB, ENABLE);
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOB, DISABLE);
  }
  else if(GPIOx == GPIOC)
  {
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOC, ENABLE);
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOC, DISABLE);
  }
  else if(GPIOx == GPIOD)
  {
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOD, ENABLE);
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOD, DISABLE);
  }
  else if(GPIOx == GPIOE)
  {
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOE, ENABLE);
    RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOE, DISABLE);
  }
  else
  {
    if(GPIOx == GPIOF)
    {
      RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOF, ENABLE);
      RCC_AHBPeriphResetCmd(RCC_AHBPeriph_GPIOF, DISABLE);
    }
  }
}
