
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int Status; } ;
typedef scalar_t__ FlagStatus ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 int IS_ETH_DMARxDESC_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus ETH_GetDMARxDescFlagStatus(ETH_DMADESCTypeDef *DMARxDesc, uint32_t ETH_DMARxDescFlag)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_ETH_DMARxDESC_GET_FLAG(ETH_DMARxDescFlag));
  if ((DMARxDesc->Status & ETH_DMARxDescFlag) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
