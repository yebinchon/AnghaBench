
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_SMBusAlert_High ;
 int I2C_SMBusAlert_Low ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_SMBUS_ALERT (int ) ;
 int assert_param (int ) ;

void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_SMBUS_ALERT(I2C_SMBusAlert));
  if (I2C_SMBusAlert == I2C_SMBusAlert_Low)
  {

    I2Cx->CR1 |= I2C_SMBusAlert_Low;
  }
  else
  {

    I2Cx->CR1 &= I2C_SMBusAlert_High;
  }
}
