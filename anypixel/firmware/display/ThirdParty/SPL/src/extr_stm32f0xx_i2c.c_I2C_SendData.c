
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ TXDR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  I2Cx->TXDR = (uint8_t)Data;
}
