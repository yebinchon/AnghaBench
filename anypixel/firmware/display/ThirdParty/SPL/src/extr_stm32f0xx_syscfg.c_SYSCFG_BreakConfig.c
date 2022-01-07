
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CFGR2; } ;


 int IS_SYSCFG_LOCK_CONFIG (scalar_t__) ;
 TYPE_1__* SYSCFG ;
 int assert_param (int ) ;

void SYSCFG_BreakConfig(uint32_t SYSCFG_Break)
{

  assert_param(IS_SYSCFG_LOCK_CONFIG(SYSCFG_Break));

  SYSCFG->CFGR2 |= (uint32_t) SYSCFG_Break;
}
