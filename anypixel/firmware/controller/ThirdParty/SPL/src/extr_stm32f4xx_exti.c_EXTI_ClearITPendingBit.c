
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int PR; } ;


 TYPE_1__* EXTI ;
 int IS_EXTI_LINE (int ) ;
 int assert_param (int ) ;

void EXTI_ClearITPendingBit(uint32_t EXTI_Line)
{

  assert_param(IS_EXTI_LINE(EXTI_Line));

  EXTI->PR = EXTI_Line;
}
