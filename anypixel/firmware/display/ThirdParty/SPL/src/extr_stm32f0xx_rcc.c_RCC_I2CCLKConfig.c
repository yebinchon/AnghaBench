
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR3; } ;


 int IS_RCC_I2CCLK (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR3_I2C1SW ;
 int assert_param (int ) ;

void RCC_I2CCLKConfig(uint32_t RCC_I2CCLK)
{

  assert_param(IS_RCC_I2CCLK(RCC_I2CCLK));


  RCC->CFGR3 &= ~RCC_CFGR3_I2C1SW;

  RCC->CFGR3 |= RCC_I2CCLK;
}
