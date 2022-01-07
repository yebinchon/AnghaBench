
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; int CFGR3; } ;


 int IS_RCC_ADCCLK (int) ;
 TYPE_1__* RCC ;
 int RCC_CFGR3_ADCSW ;
 int RCC_CFGR_ADCPRE ;
 int assert_param (int ) ;

void RCC_ADCCLKConfig(uint32_t RCC_ADCCLK)
{

  assert_param(IS_RCC_ADCCLK(RCC_ADCCLK));


  RCC->CFGR &= ~RCC_CFGR_ADCPRE;

  RCC->CFGR |= RCC_ADCCLK & 0xFFFF;


  RCC->CFGR3 &= ~RCC_CFGR3_ADCSW;

  RCC->CFGR3 |= RCC_ADCCLK >> 16;
}
