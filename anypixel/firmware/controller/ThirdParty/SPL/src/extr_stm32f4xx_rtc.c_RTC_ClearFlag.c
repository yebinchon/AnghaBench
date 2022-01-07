
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;


 int IS_RTC_CLEAR_FLAG (int) ;
 TYPE_1__* RTC ;
 int RTC_ISR_INIT ;
 int assert_param (int ) ;

void RTC_ClearFlag(uint32_t RTC_FLAG)
{

  assert_param(IS_RTC_CLEAR_FLAG(RTC_FLAG));


  RTC->ISR = (uint32_t)((uint32_t)(~((RTC_FLAG | RTC_ISR_INIT)& 0x0000FFFF) | (uint32_t)(RTC->ISR & RTC_ISR_INIT)));
}
