
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_CR2_AUTOEND ;
 int I2C_CR2_NBYTES ;
 int I2C_CR2_RD_WRN ;
 int I2C_CR2_RELOAD ;
 int I2C_CR2_SADD ;
 int I2C_CR2_START ;
 int I2C_CR2_STOP ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_SLAVE_ADDRESS (scalar_t__) ;
 int IS_RELOAD_END_MODE (int) ;
 int IS_START_STOP_MODE (int) ;
 int assert_param (int ) ;

void I2C_TransferHandling(I2C_TypeDef* I2Cx, uint16_t Address, uint8_t Number_Bytes, uint32_t ReloadEndMode, uint32_t StartStopMode)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_SLAVE_ADDRESS(Address));
  assert_param(IS_RELOAD_END_MODE(ReloadEndMode));
  assert_param(IS_START_STOP_MODE(StartStopMode));


  tmpreg = I2Cx->CR2;


  tmpreg &= (uint32_t)~((uint32_t)(I2C_CR2_SADD | I2C_CR2_NBYTES | I2C_CR2_RELOAD | I2C_CR2_AUTOEND | I2C_CR2_RD_WRN | I2C_CR2_START | I2C_CR2_STOP));


  tmpreg |= (uint32_t)(((uint32_t)Address & I2C_CR2_SADD) | (((uint32_t)Number_Bytes << 16 ) & I2C_CR2_NBYTES) | (uint32_t)ReloadEndMode | (uint32_t)StartStopMode);



  I2Cx->CR2 = tmpreg;
}
