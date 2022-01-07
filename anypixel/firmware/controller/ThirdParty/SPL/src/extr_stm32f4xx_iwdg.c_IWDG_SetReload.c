
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int RLR; } ;


 int IS_IWDG_RELOAD (int ) ;
 TYPE_1__* IWDG ;
 int assert_param (int ) ;

void IWDG_SetReload(uint16_t Reload)
{

  assert_param(IS_IWDG_RELOAD(Reload));
  IWDG->RLR = Reload;
}
