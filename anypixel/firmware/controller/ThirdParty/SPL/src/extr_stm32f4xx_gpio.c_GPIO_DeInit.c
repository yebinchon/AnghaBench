
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
 int * GPIOG ;
 int * GPIOH ;
 int * GPIOI ;
 int IS_GPIO_ALL_PERIPH (int *) ;
 int RCC_AHB1PeriphResetCmd (int ,int ) ;
 int RCC_AHB1Periph_GPIOA ;
 int RCC_AHB1Periph_GPIOB ;
 int RCC_AHB1Periph_GPIOC ;
 int RCC_AHB1Periph_GPIOD ;
 int RCC_AHB1Periph_GPIOE ;
 int RCC_AHB1Periph_GPIOF ;
 int RCC_AHB1Periph_GPIOG ;
 int RCC_AHB1Periph_GPIOH ;
 int RCC_AHB1Periph_GPIOI ;
 int assert_param (int ) ;

void GPIO_DeInit(GPIO_TypeDef* GPIOx)
{

  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));

  if (GPIOx == GPIOA)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOA, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOA, DISABLE);
  }
  else if (GPIOx == GPIOB)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOB, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOB, DISABLE);
  }
  else if (GPIOx == GPIOC)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOC, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOC, DISABLE);
  }
  else if (GPIOx == GPIOD)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOD, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOD, DISABLE);
  }
  else if (GPIOx == GPIOE)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOE, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOE, DISABLE);
  }
  else if (GPIOx == GPIOF)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOF, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOF, DISABLE);
  }
  else if (GPIOx == GPIOG)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOG, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOG, DISABLE);
  }
  else if (GPIOx == GPIOH)
  {
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOH, ENABLE);
    RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOH, DISABLE);
  }
  else
  {
    if (GPIOx == GPIOI)
    {
      RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOI, ENABLE);
      RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_GPIOI, DISABLE);
    }
  }
}
