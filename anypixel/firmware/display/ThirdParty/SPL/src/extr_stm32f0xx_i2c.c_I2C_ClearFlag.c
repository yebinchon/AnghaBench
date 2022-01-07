
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ICR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_CLEAR_FLAG (int ) ;
 int assert_param (int ) ;

void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_CLEAR_FLAG(I2C_FLAG));


  I2Cx->ICR = I2C_FLAG;
  }
