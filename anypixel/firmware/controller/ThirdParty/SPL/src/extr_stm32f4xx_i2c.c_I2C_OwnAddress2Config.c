
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int OAR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 scalar_t__ I2C_OAR2_ADD2 ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address)
{
  uint16_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  tmpreg = I2Cx->OAR2;


  tmpreg &= (uint16_t)~((uint16_t)I2C_OAR2_ADD2);


  tmpreg |= (uint16_t)((uint16_t)Address & (uint16_t)0x00FE);


  I2Cx->OAR2 = tmpreg;
}
