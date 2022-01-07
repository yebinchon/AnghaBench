
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int CR; } ;
struct TYPE_3__ {int SCR; } ;


 TYPE_2__* PWR ;
 int PWR_CR_CWUF ;
 int PWR_CR_PDDS ;
 TYPE_1__* SCB ;
 int SCB_SCR_SLEEPDEEP_Msk ;
 int __WFI () ;
 int __force_stores () ;

void PWR_EnterSTANDBYMode(void)
{

  PWR->CR |= PWR_CR_CWUF;


  PWR->CR |= PWR_CR_PDDS;


  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;






  __WFI();
}
