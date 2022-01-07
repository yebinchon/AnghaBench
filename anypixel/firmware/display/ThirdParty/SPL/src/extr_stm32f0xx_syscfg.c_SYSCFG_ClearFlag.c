
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CFGR2; } ;


 int IS_SYSCFG_FLAG (scalar_t__) ;
 TYPE_1__* SYSCFG ;
 int assert_param (int ) ;

void SYSCFG_ClearFlag(uint32_t SYSCFG_Flag)
{

  assert_param(IS_SYSCFG_FLAG(SYSCFG_Flag));

  SYSCFG->CFGR2 |= (uint32_t) SYSCFG_Flag;
}
