
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CFR; } ;


 TYPE_1__* WWDG ;
 int WWDG_CFR_EWI ;

void WWDG_EnableIT(void)
{
  WWDG->CFR |= WWDG_CFR_EWI;
}
