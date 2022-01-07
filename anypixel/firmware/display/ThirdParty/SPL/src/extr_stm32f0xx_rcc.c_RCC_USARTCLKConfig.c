
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR3; } ;


 int IS_RCC_USARTCLK (int) ;
 TYPE_1__* RCC ;
 int RCC_CFGR3_USART1SW ;
 int RCC_CFGR3_USART2SW ;
 int assert_param (int ) ;

void RCC_USARTCLKConfig(uint32_t RCC_USARTCLK)
{
  uint32_t tmp = 0;


  assert_param(IS_RCC_USARTCLK(RCC_USARTCLK));


  tmp = (RCC_USARTCLK >> 28);


  if (tmp == (uint32_t)0x00000001)
  {

    RCC->CFGR3 &= ~RCC_CFGR3_USART1SW;
  }
  else
  {

    RCC->CFGR3 &= ~RCC_CFGR3_USART2SW;
  }


  RCC->CFGR3 |= RCC_USARTCLK;
}
