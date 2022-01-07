
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR3; } ;


 int IS_RCC_USBCLK (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR3_USBSW ;
 int assert_param (int ) ;

void RCC_USBCLKConfig(uint32_t RCC_USBCLK)
{

  assert_param(IS_RCC_USBCLK(RCC_USBCLK));


  RCC->CFGR3 &= ~RCC_CFGR3_USBSW;

  RCC->CFGR3 |= RCC_USBCLK;
}
