
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ ControlBufferSize; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 scalar_t__ DISABLE ;
 scalar_t__ ETH_DMARxDesc_DIC ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ETH_DMARxDescReceiveITConfig(ETH_DMADESCTypeDef *DMARxDesc, FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DMARxDesc->ControlBufferSize &=(~(uint32_t)ETH_DMARxDesc_DIC);
  }
  else
  {

    DMARxDesc->ControlBufferSize |= ETH_DMARxDesc_DIC;
  }
}
