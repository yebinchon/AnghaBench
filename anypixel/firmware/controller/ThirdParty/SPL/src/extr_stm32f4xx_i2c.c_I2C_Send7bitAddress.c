
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ DR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 scalar_t__ I2C_Direction_Transmitter ;
 scalar_t__ I2C_OAR1_ADD0 ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_DIRECTION (scalar_t__) ;
 int assert_param (int ) ;

void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_DIRECTION(I2C_Direction));

  if (I2C_Direction != I2C_Direction_Transmitter)
  {

    Address |= I2C_OAR1_ADD0;
  }
  else
  {

    Address &= (uint8_t)~((uint8_t)I2C_OAR1_ADD0);
  }

  I2Cx->DR = Address;
}
