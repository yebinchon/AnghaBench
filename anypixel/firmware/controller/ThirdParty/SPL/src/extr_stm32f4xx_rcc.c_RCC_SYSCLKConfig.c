
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int IS_RCC_SYSCLK_SOURCE (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR_SW ;
 int assert_param (int ) ;

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_SYSCLK_SOURCE(RCC_SYSCLKSource));

  tmpreg = RCC->CFGR;


  tmpreg &= ~RCC_CFGR_SW;


  tmpreg |= RCC_SYSCLKSource;


  RCC->CFGR = tmpreg;
}
