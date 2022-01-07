
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int SR1; int SR2; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int FLAG_MASK ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx)
{
  uint32_t lastevent = 0;
  uint32_t flag1 = 0, flag2 = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  flag1 = I2Cx->SR1;
  flag2 = I2Cx->SR2;
  flag2 = flag2 << 16;


  lastevent = (flag1 | flag2) & FLAG_MASK;


  return lastevent;
}
