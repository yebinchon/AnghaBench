
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int KR; } ;


 int IS_IWDG_WRITE_ACCESS (int ) ;
 TYPE_1__* IWDG ;
 int assert_param (int ) ;

void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess)
{

  assert_param(IS_IWDG_WRITE_ACCESS(IWDG_WriteAccess));
  IWDG->KR = IWDG_WriteAccess;
}
