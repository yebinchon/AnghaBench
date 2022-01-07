
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int PR; } ;


 int IS_IWDG_PRESCALER (int ) ;
 TYPE_1__* IWDG ;
 int assert_param (int ) ;

void IWDG_SetPrescaler(uint8_t IWDG_Prescaler)
{

  assert_param(IS_IWDG_PRESCALER(IWDG_Prescaler));
  IWDG->PR = IWDG_Prescaler;
}
