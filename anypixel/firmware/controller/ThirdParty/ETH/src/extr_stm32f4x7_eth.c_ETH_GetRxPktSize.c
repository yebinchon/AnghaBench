
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 int ETH_DMARxDesc_ES ;
 int ETH_DMARxDesc_LS ;
 int ETH_DMARxDesc_OWN ;
 int ETH_GetDMARxDescFrameLength (TYPE_1__*) ;
 scalar_t__ RESET ;

uint32_t ETH_GetRxPktSize(ETH_DMADESCTypeDef *DMARxDesc)
{
  uint32_t frameLength = 0;
  if(((DMARxDesc->Status & ETH_DMARxDesc_OWN) == (uint32_t)RESET) &&
     ((DMARxDesc->Status & ETH_DMARxDesc_ES) == (uint32_t)RESET) &&
       ((DMARxDesc->Status & ETH_DMARxDesc_LS) != (uint32_t)RESET))
  {

    frameLength = ETH_GetDMARxDescFrameLength(DMARxDesc);
  }


  return frameLength;
}
