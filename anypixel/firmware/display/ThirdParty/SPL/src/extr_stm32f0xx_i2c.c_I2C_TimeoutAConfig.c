
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int TIMEOUTR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_TIMEOUTR_TIMEOUTA ;
 int IS_I2C_1_PERIPH (TYPE_1__*) ;
 int IS_I2C_TIMEOUT (scalar_t__) ;
 int assert_param (int ) ;

void I2C_TimeoutAConfig(I2C_TypeDef* I2Cx, uint16_t Timeout)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_1_PERIPH(I2Cx));
  assert_param(IS_I2C_TIMEOUT(Timeout));


  tmpreg = I2Cx->TIMEOUTR;


  tmpreg &= (uint32_t)~((uint32_t)I2C_TIMEOUTR_TIMEOUTA);


  tmpreg |= (uint32_t)((uint32_t)Timeout & I2C_TIMEOUTR_TIMEOUTA) ;


  I2Cx->TIMEOUTR = tmpreg;
}
