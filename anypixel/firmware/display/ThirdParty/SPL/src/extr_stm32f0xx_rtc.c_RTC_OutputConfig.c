
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int WPR; int CR; } ;


 int IS_RTC_OUTPUT (int) ;
 int IS_RTC_OUTPUT_POL (int) ;
 TYPE_1__* RTC ;
 int RTC_CR_OSEL ;
 int RTC_CR_POL ;
 int assert_param (int ) ;

void RTC_OutputConfig(uint32_t RTC_Output, uint32_t RTC_OutputPolarity)
{

  assert_param(IS_RTC_OUTPUT(RTC_Output));
  assert_param(IS_RTC_OUTPUT_POL(RTC_OutputPolarity));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  RTC->CR &= (uint32_t)~(RTC_CR_OSEL | RTC_CR_POL);


  RTC->CR |= (uint32_t)(RTC_Output | RTC_OutputPolarity);


  RTC->WPR = 0xFF;
}
