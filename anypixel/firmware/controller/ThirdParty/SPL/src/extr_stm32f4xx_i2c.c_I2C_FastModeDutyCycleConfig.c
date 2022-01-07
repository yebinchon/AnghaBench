
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_DutyCycle_16_9 ;
 int I2C_DutyCycle_2 ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_DUTY_CYCLE (int ) ;
 int assert_param (int ) ;

void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_DUTY_CYCLE(I2C_DutyCycle));
  if (I2C_DutyCycle != I2C_DutyCycle_16_9)
  {

    I2Cx->CCR &= I2C_DutyCycle_2;
  }
  else
  {

    I2Cx->CCR |= I2C_DutyCycle_16_9;
  }
}
