
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR3; } ;


 int IS_RCC_CECCLK (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR3_CECSW ;
 int assert_param (int ) ;

void RCC_CECCLKConfig(uint32_t RCC_CECCLK)
{

  assert_param(IS_RCC_CECCLK(RCC_CECCLK));


  RCC->CFGR3 &= ~RCC_CFGR3_CECSW;

  RCC->CFGR3 |= RCC_CECCLK;
}
