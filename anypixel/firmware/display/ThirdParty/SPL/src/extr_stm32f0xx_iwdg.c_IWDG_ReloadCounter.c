
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int KR; } ;


 TYPE_1__* IWDG ;
 int KR_KEY_RELOAD ;

void IWDG_ReloadCounter(void)
{
  IWDG->KR = KR_KEY_RELOAD;
}
