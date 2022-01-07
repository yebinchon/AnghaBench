
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ISR; int CR1; } ;
typedef int ITStatus ;
typedef TYPE_1__ I2C_TypeDef ;
typedef scalar_t__ I2C_IT ;
typedef scalar_t__ I2C_CR1_TCIE ;
typedef scalar_t__ I2C_CR1_ERRIE ;


 int ERROR_IT_MASK ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_GET_IT (int) ;
 int RESET ;
 int SET ;
 int TC_IT_MASK ;
 int assert_param (int ) ;

ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT)
{
  uint32_t tmpreg = 0;
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_GET_IT(I2C_IT));



  if ((uint32_t)(I2C_IT & ERROR_IT_MASK))
  {
    enablestatus = (uint32_t)((I2C_CR1_ERRIE) & (I2Cx->CR1));
  }

  else if ((uint32_t)(I2C_IT & TC_IT_MASK))
  {
    enablestatus = (uint32_t)((I2C_CR1_TCIE) & (I2Cx->CR1));
  }
  else
  {
    enablestatus = (uint32_t)((I2C_IT) & (I2Cx->CR1));
  }


  tmpreg = I2Cx->ISR;


  tmpreg &= I2C_IT;


  if((tmpreg != RESET) && enablestatus)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
