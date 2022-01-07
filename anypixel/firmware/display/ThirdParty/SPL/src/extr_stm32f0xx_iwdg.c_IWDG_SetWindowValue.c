
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int WINR; } ;


 int IS_IWDG_WINDOW_VALUE (int ) ;
 TYPE_1__* IWDG ;
 int assert_param (int ) ;

void IWDG_SetWindowValue(uint16_t WindowValue)
{

  assert_param(IS_IWDG_WINDOW_VALUE(WindowValue));
  IWDG->WINR = WindowValue;
}
