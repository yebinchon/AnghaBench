
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_CR2_SADD ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_SLAVE_ADDRESS (scalar_t__) ;
 int assert_param (int ) ;

void I2C_SlaveAddressConfig(I2C_TypeDef* I2Cx, uint16_t Address)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_SLAVE_ADDRESS(Address));


  tmpreg = I2Cx->CR2;


  tmpreg &= (uint32_t)~((uint32_t)I2C_CR2_SADD);


  tmpreg |= (uint32_t)((uint32_t)Address & I2C_CR2_SADD);


  I2Cx->CR2 = tmpreg;
}
