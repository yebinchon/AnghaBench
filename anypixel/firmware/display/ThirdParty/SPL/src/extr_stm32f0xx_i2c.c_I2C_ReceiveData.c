
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int RXDR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  return (uint8_t)I2Cx->RXDR;
}
