
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_CR2_NBYTES ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_NumberOfBytesConfig(I2C_TypeDef* I2Cx, uint8_t Number_Bytes)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  tmpreg = I2Cx->CR2;


  tmpreg &= (uint32_t)~((uint32_t)I2C_CR2_NBYTES);


  tmpreg |= (uint32_t)(((uint32_t)Number_Bytes << 16 ) & I2C_CR2_NBYTES);


  I2Cx->CR2 = tmpreg;
}
