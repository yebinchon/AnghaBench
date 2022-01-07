
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ ISR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_ISR_ADDCODE ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t I2C_GetAddressMatched(I2C_TypeDef* I2Cx)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  return (uint8_t)(((uint32_t)I2Cx->ISR & I2C_ISR_ADDCODE) >> 16) ;
}
