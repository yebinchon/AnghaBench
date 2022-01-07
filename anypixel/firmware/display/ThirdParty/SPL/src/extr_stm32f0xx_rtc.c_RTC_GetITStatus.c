
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int TAFCR; int CR; int ISR; } ;
typedef scalar_t__ ITStatus ;


 int IS_RTC_GET_IT (int) ;
 scalar_t__ RESET ;
 TYPE_1__* RTC ;
 int RTC_TAFCR_TAMPIE ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus RTC_GetITStatus(uint32_t RTC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t tmpreg = 0, enablestatus = 0;


  assert_param(IS_RTC_GET_IT(RTC_IT));


  tmpreg = (uint32_t)(RTC->TAFCR & (RTC_TAFCR_TAMPIE));


  enablestatus = (uint32_t)((RTC->CR & RTC_IT) | (tmpreg & ((RTC_IT >> (RTC_IT >> 18)) >> 15)));


  tmpreg = (uint32_t)((RTC->ISR & (uint32_t)(RTC_IT >> 4)));


  if ((enablestatus != (uint32_t)RESET) && ((tmpreg & 0x0000FFFF) != (uint32_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
