
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int CR; } ;


 int IS_WWDG_COUNTER (int) ;
 TYPE_1__* WWDG ;
 int WWDG_CR_WDGA ;
 int assert_param (int ) ;

void WWDG_Enable(uint8_t Counter)
{

  assert_param(IS_WWDG_COUNTER(Counter));
  WWDG->CR = WWDG_CR_WDGA | Counter;
}
