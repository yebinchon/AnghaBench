
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int AIRCR; } ;


 int AIRCR_VECTKEY_MASK ;
 int IS_NVIC_PRIORITY_GROUP (int) ;
 TYPE_1__* SCB ;
 int assert_param (int ) ;

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup)
{

  assert_param(IS_NVIC_PRIORITY_GROUP(NVIC_PriorityGroup));


  SCB->AIRCR = AIRCR_VECTKEY_MASK | NVIC_PriorityGroup;
}
