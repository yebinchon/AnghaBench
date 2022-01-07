
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_1__* FS_Rx_Desc; } ;
struct TYPE_9__ {int Status; scalar_t__ Buffer2NextDescAddr; } ;
struct TYPE_8__ {int length; int buffer; TYPE_1__* descriptor; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {int Buffer1Addr; } ;
typedef TYPE_2__ FrameTypeDef ;
typedef TYPE_3__ ETH_DMADESCTypeDef ;


 TYPE_3__* DMARxDescToGet ;
 TYPE_5__* DMA_RX_FRAME_infos ;
 int ETH_DMARxDesc_FL ;
 int ETH_DMARxDesc_FrameLengthShift ;

FrameTypeDef ETH_Get_Received_Frame(void)
{
  uint32_t framelength = 0;
  FrameTypeDef frame = {0,0,0};


  framelength = ((DMARxDescToGet->Status & ETH_DMARxDesc_FL) >> ETH_DMARxDesc_FrameLengthShift) - 4;
  frame.length = framelength;


  frame.descriptor = DMA_RX_FRAME_infos->FS_Rx_Desc;
  frame.buffer =(DMA_RX_FRAME_infos->FS_Rx_Desc)->Buffer1Addr;




  DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);


  return (frame);
}
