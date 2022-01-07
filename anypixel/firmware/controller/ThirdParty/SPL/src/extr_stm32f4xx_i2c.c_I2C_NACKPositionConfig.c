
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_NACKPosition_Current ;
 int I2C_NACKPosition_Next ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_NACK_POSITION (int ) ;
 int assert_param (int ) ;

void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_NACK_POSITION(I2C_NACKPosition));


  if (I2C_NACKPosition == I2C_NACKPosition_Next)
  {

    I2Cx->CR1 |= I2C_NACKPosition_Next;
  }
  else
  {

    I2Cx->CR1 &= I2C_NACKPosition_Current;
  }
}
