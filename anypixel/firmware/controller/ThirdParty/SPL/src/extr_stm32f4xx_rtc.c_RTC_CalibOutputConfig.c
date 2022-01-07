
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int WPR; scalar_t__ CR; } ;


 int IS_RTC_CALIB_OUTPUT (scalar_t__) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_CR_COSEL ;
 int assert_param (int ) ;

void RTC_CalibOutputConfig(uint32_t RTC_CalibOutput)
{

  assert_param(IS_RTC_CALIB_OUTPUT(RTC_CalibOutput));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  RTC->CR &= (uint32_t)~(RTC_CR_COSEL);


  RTC->CR |= (uint32_t)RTC_CalibOutput;


  RTC->WPR = 0xFF;
}
