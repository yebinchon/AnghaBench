
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 TYPE_1__* RTC ;
 int RTC_CR_BCK ;

uint32_t RTC_GetStoreOperation(void)
{
  return (RTC->CR & RTC_CR_BCK);
}
