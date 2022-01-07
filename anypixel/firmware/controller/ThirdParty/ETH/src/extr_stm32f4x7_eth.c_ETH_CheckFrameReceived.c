
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int Seg_Count; TYPE_1__* LS_Rx_Desc; TYPE_1__* FS_Rx_Desc; } ;
struct TYPE_4__ {int Status; scalar_t__ Buffer2NextDescAddr; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 TYPE_1__* DMARxDescToGet ;
 TYPE_2__* DMA_RX_FRAME_infos ;
 int ETH_DMARxDesc_FS ;
 int ETH_DMARxDesc_LS ;
 int ETH_DMARxDesc_OWN ;
 scalar_t__ RESET ;

uint32_t ETH_CheckFrameReceived(void)
{

  if(((DMARxDescToGet->Status & ETH_DMARxDesc_OWN) == (uint32_t)RESET) &&
     ((DMARxDescToGet->Status & ETH_DMARxDesc_LS) != (uint32_t)RESET))
  {
    DMA_RX_FRAME_infos->Seg_Count++;
    if (DMA_RX_FRAME_infos->Seg_Count == 1)
    {
      DMA_RX_FRAME_infos->FS_Rx_Desc = DMARxDescToGet;
    }
    DMA_RX_FRAME_infos->LS_Rx_Desc = DMARxDescToGet;
    return 1;
  }


  else if(((DMARxDescToGet->Status & ETH_DMARxDesc_OWN) == (uint32_t)RESET) &&
          ((DMARxDescToGet->Status & ETH_DMARxDesc_FS) != (uint32_t)RESET)&&
            ((DMARxDescToGet->Status & ETH_DMARxDesc_LS) == (uint32_t)RESET))
  {
    DMA_RX_FRAME_infos->FS_Rx_Desc = DMARxDescToGet;
    DMA_RX_FRAME_infos->LS_Rx_Desc = ((void*)0);
    DMA_RX_FRAME_infos->Seg_Count = 1;
    DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);
  }


  else if(((DMARxDescToGet->Status & ETH_DMARxDesc_OWN) == (uint32_t)RESET) &&
          ((DMARxDescToGet->Status & ETH_DMARxDesc_FS) == (uint32_t)RESET)&&
            ((DMARxDescToGet->Status & ETH_DMARxDesc_LS) == (uint32_t)RESET))
  {
    (DMA_RX_FRAME_infos->Seg_Count) ++;
    DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);
  }
  return 0;
}
