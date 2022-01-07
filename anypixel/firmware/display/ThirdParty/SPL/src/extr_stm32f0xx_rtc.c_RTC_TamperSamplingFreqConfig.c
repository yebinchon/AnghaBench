
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TAFCR; } ;


 int IS_RTC_TAMPER_SAMPLING_FREQ (scalar_t__) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_TAFCR_TAMPFREQ ;
 int assert_param (int ) ;

void RTC_TamperSamplingFreqConfig(uint32_t RTC_TamperSamplingFreq)
{

  assert_param(IS_RTC_TAMPER_SAMPLING_FREQ(RTC_TamperSamplingFreq));


  RTC->TAFCR &= (uint32_t)~(RTC_TAFCR_TAMPFREQ);


  RTC->TAFCR |= (uint32_t)RTC_TamperSamplingFreq;
}
