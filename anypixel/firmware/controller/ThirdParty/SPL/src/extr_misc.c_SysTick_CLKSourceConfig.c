
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CTRL; } ;


 int IS_SYSTICK_CLK_SOURCE (int ) ;
 TYPE_1__* SysTick ;
 int SysTick_CLKSource_HCLK ;
 int SysTick_CLKSource_HCLK_Div8 ;
 int assert_param (int ) ;

void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource)
{

  assert_param(IS_SYSTICK_CLK_SOURCE(SysTick_CLKSource));
  if (SysTick_CLKSource == SysTick_CLKSource_HCLK)
  {
    SysTick->CTRL |= SysTick_CLKSource_HCLK;
  }
  else
  {
    SysTick->CTRL &= SysTick_CLKSource_HCLK_Div8;
  }
}
