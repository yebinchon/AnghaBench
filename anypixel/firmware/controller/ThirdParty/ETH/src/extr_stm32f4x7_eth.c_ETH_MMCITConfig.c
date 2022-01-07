
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int MMCRIMR; int MMCTIMR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* ETH ;
 int IS_ETH_MMC_IT (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 scalar_t__ RESET ;
 int assert_param (int ) ;

void ETH_MMCITConfig(uint32_t ETH_MMC_IT, FunctionalState NewState)
{

  assert_param(IS_ETH_MMC_IT(ETH_MMC_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if ((ETH_MMC_IT & (uint32_t)0x10000000) != (uint32_t)RESET)
  {

    ETH_MMC_IT &= 0xEFFFFFFF;


    if (NewState != DISABLE)
    {

      ETH->MMCRIMR &=(~(uint32_t)ETH_MMC_IT);
    }
    else
    {

      ETH->MMCRIMR |= ETH_MMC_IT;
    }
  }
  else
  {

    if (NewState != DISABLE)
    {

      ETH->MMCTIMR &=(~(uint32_t)ETH_MMC_IT);
    }
    else
    {

      ETH->MMCTIMR |= ETH_MMC_IT;
    }
  }
}
