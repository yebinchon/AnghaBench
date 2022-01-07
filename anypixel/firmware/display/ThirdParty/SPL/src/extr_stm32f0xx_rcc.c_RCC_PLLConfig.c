
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int IS_RCC_PLL_MUL (int) ;
 int IS_RCC_PLL_SOURCE (int) ;
 TYPE_1__* RCC ;
 int RCC_CFGR_PLLMULL ;
 int RCC_CFGR_PLLSRC ;
 int assert_param (int ) ;

void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul)
{

  assert_param(IS_RCC_PLL_SOURCE(RCC_PLLSource));
  assert_param(IS_RCC_PLL_MUL(RCC_PLLMul));


  RCC->CFGR &= ~(RCC_CFGR_PLLMULL | RCC_CFGR_PLLSRC);


  RCC->CFGR |= (uint32_t)(RCC_PLLSource | RCC_PLLMul);
}
