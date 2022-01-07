
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ SCR; } ;


 int IS_PWR_SLEEP_ENTRY (scalar_t__) ;
 scalar_t__ PWR_SLEEPEntry_WFI ;
 TYPE_1__* SCB ;
 scalar_t__ SCB_SCR_SLEEPDEEP_Msk ;
 int __WFE () ;
 int __WFI () ;
 int assert_param (int ) ;

void PWR_EnterSleepMode(uint8_t PWR_SLEEPEntry)
{

  assert_param(IS_PWR_SLEEP_ENTRY(PWR_SLEEPEntry));


  SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk);


  if(PWR_SLEEPEntry == PWR_SLEEPEntry_WFI)
  {

    __WFI();
  }
  else
  {

    __WFE();
  }
}
