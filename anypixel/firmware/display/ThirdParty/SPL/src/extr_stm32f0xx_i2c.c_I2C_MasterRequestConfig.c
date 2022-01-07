
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 scalar_t__ I2C_CR2_RD_WRN ;
 scalar_t__ I2C_Direction_Transmitter ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_DIRECTION (scalar_t__) ;
 int assert_param (int ) ;

void I2C_MasterRequestConfig(I2C_TypeDef* I2Cx, uint16_t I2C_Direction)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_DIRECTION(I2C_Direction));


  if (I2C_Direction == I2C_Direction_Transmitter)
  {

    I2Cx->CR2 &= (uint32_t)~((uint32_t)I2C_CR2_RD_WRN);
  }
  else
  {

    I2Cx->CR2 |= I2C_CR2_RD_WRN;
  }
}
