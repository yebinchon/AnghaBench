
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int IS_RCC_HCLK (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR_HPRE ;
 int assert_param (int ) ;

void RCC_HCLKConfig(uint32_t RCC_SYSCLK)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_HCLK(RCC_SYSCLK));

  tmpreg = RCC->CFGR;


  tmpreg &= ~RCC_CFGR_HPRE;


  tmpreg |= RCC_SYSCLK;


  RCC->CFGR = tmpreg;
}
