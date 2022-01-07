
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MAIN_CNT; int TIM2_COMP; int TIM2_CONF; int TIM1_COMP; int TIM1_CONF; int TIM0_COMP; int TIM0_CONF; int GEN_CONF; } ;
typedef TYPE_1__ hpetReg_t ;


 scalar_t__ hpetArea ;
 TYPE_1__ saved_hpet ;

void
hpet_save(void)
{
 hpetReg_t *from = (hpetReg_t *) hpetArea;
 hpetReg_t *to = &saved_hpet;

 to->GEN_CONF = from->GEN_CONF;
 to->TIM0_CONF = from->TIM0_CONF;
 to->TIM0_COMP = from->TIM0_COMP;
 to->TIM1_CONF = from->TIM1_CONF;
 to->TIM1_COMP = from->TIM1_COMP;
 to->TIM2_CONF = from->TIM2_CONF;
 to->TIM2_COMP = from->TIM2_COMP;
 to->MAIN_CNT = from->MAIN_CNT;
}
