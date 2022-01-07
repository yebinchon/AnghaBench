
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int BDCR; } ;


 int IS_RCC_RTCCLK_SOURCE (int ) ;
 TYPE_1__* RCC ;
 int assert_param (int ) ;

void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
{

  assert_param(IS_RCC_RTCCLK_SOURCE(RCC_RTCCLKSource));


  RCC->BDCR |= RCC_RTCCLKSource;
}
