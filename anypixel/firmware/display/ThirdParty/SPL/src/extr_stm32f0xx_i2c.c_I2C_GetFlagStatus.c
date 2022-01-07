
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ISR; } ;
typedef TYPE_1__ I2C_TypeDef ;
typedef int FlagStatus ;


 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_GET_FLAG (int ) ;
 int RESET ;
 int SET ;
 int assert_param (int ) ;

FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
{
  uint32_t tmpreg = 0;
  FlagStatus bitstatus = RESET;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_GET_FLAG(I2C_FLAG));


  tmpreg = I2Cx->ISR;


  tmpreg &= I2C_FLAG;

  if(tmpreg != 0)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }
  return bitstatus;
}
