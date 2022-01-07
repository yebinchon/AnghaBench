
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int DR; scalar_t__ SSR; } ;


 TYPE_1__* RTC ;

uint32_t RTC_GetSubSecond(void)
{
  uint32_t tmpreg = 0;


  tmpreg = (uint32_t)(RTC->SSR);


  (void) (RTC->DR);

  return (tmpreg);
}
