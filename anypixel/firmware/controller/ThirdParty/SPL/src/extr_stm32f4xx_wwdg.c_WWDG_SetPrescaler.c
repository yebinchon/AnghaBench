
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFR; } ;


 int CFR_WDGTB_MASK ;
 int IS_WWDG_PRESCALER (int) ;
 TYPE_1__* WWDG ;
 int assert_param (int ) ;

void WWDG_SetPrescaler(uint32_t WWDG_Prescaler)
{
  uint32_t tmpreg = 0;

  assert_param(IS_WWDG_PRESCALER(WWDG_Prescaler));

  tmpreg = WWDG->CFR & CFR_WDGTB_MASK;

  tmpreg |= WWDG_Prescaler;

  WWDG->CFR = tmpreg;
}
