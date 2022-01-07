
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; int BDCR; } ;


 int IS_RCC_RTCCLK_SOURCE (int) ;
 TYPE_1__* RCC ;
 int RCC_CFGR_RTCPRE ;
 int assert_param (int ) ;

void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_RTCCLK_SOURCE(RCC_RTCCLKSource));

  if ((RCC_RTCCLKSource & 0x00000300) == 0x00000300)
  {
    tmpreg = RCC->CFGR;


    tmpreg &= ~RCC_CFGR_RTCPRE;


    tmpreg |= (RCC_RTCCLKSource & 0xFFFFCFF);


    RCC->CFGR = tmpreg;
  }


  RCC->BDCR |= (RCC_RTCCLKSource & 0x00000FFF);
}
