
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ PECR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_PECR_PEC ;
 int IS_I2C_1_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx)
{

  assert_param(IS_I2C_1_PERIPH(I2Cx));


  return (uint8_t)((uint32_t)I2Cx->PECR & I2C_PECR_PEC);
}
