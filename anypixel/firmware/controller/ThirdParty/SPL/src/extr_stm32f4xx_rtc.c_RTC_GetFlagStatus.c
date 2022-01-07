
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;
typedef scalar_t__ FlagStatus ;


 int IS_RTC_GET_FLAG (int) ;
 scalar_t__ RESET ;
 TYPE_1__* RTC ;
 int RTC_FLAGS_MASK ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus RTC_GetFlagStatus(uint32_t RTC_FLAG)
{
  FlagStatus bitstatus = RESET;
  uint32_t tmpreg = 0;


  assert_param(IS_RTC_GET_FLAG(RTC_FLAG));


  tmpreg = (uint32_t)(RTC->ISR & RTC_FLAGS_MASK);


  if ((tmpreg & RTC_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
