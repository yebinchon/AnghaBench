
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR; } ;
struct TYPE_3__ {scalar_t__ SCR; } ;


 scalar_t__ CR_DS_MASK ;
 int IS_PWR_REGULATOR (scalar_t__) ;
 int IS_PWR_STOP_ENTRY (scalar_t__) ;
 TYPE_2__* PWR ;
 scalar_t__ PWR_STOPEntry_WFI ;
 TYPE_1__* SCB ;
 scalar_t__ SCB_SCR_SLEEPDEEP_Msk ;
 int __WFE () ;
 int __WFI () ;
 int assert_param (int ) ;

void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry)
{
  uint32_t tmpreg = 0;


  assert_param(IS_PWR_REGULATOR(PWR_Regulator));
  assert_param(IS_PWR_STOP_ENTRY(PWR_STOPEntry));


  tmpreg = PWR->CR;

  tmpreg &= CR_DS_MASK;


  tmpreg |= PWR_Regulator;


  PWR->CR = tmpreg;


  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;


  if(PWR_STOPEntry == PWR_STOPEntry_WFI)
  {

    __WFI();
  }
  else
  {

    __WFE();
  }

  SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk);
}
