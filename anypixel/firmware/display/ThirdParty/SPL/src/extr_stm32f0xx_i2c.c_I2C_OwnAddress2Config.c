
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int OAR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_OAR2_OA2 ;
 int I2C_OAR2_OA2MSK ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_OWN_ADDRESS2 (scalar_t__) ;
 int IS_I2C_OWN_ADDRESS2_MASK (scalar_t__) ;
 int assert_param (int ) ;

void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint16_t Address, uint8_t Mask)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_OWN_ADDRESS2(Address));
  assert_param(IS_I2C_OWN_ADDRESS2_MASK(Mask));


  tmpreg = I2Cx->OAR2;


  tmpreg &= (uint32_t)~((uint32_t)(I2C_OAR2_OA2 | I2C_OAR2_OA2MSK));


  tmpreg |= (uint32_t)(((uint32_t)Address & I2C_OAR2_OA2) | (((uint32_t)Mask << 8) & I2C_OAR2_OA2MSK)) ;



  I2Cx->OAR2 = tmpreg;
}
