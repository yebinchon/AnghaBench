
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;


 TYPE_1__* RTC ;
 scalar_t__ RTC_ISR_INIT ;

void RTC_ExitInitMode(void)
{

  RTC->ISR &= (uint32_t)~RTC_ISR_INIT;
}
