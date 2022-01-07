
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int DMARDLAR; } ;
struct TYPE_5__ {int ControlBufferSize; int Buffer1Addr; int Buffer2NextDescAddr; int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 TYPE_1__* DMARxDescToGet ;
 int * DMA_RX_FRAME_infos ;
 TYPE_3__* ETH ;
 int ETH_DMARxDesc_OWN ;
 int ETH_DMARxDesc_RCH ;
 int ETH_RX_BUF_SIZE ;
 int RX_Frame_Descriptor ;

void ETH_DMARxDescChainInit(ETH_DMADESCTypeDef *DMARxDescTab, uint8_t *RxBuff, uint32_t RxBuffCount)
{
  uint32_t i = 0;
  ETH_DMADESCTypeDef *DMARxDesc;


  DMARxDescToGet = DMARxDescTab;

  for(i=0; i < RxBuffCount; i++)
  {

    DMARxDesc = DMARxDescTab+i;

    DMARxDesc->Status = ETH_DMARxDesc_OWN;


    DMARxDesc->ControlBufferSize = ETH_DMARxDesc_RCH | (uint32_t)ETH_RX_BUF_SIZE;

    DMARxDesc->Buffer1Addr = (uint32_t)(&RxBuff[i*ETH_RX_BUF_SIZE]);


    if(i < (RxBuffCount-1))
    {

      DMARxDesc->Buffer2NextDescAddr = (uint32_t)(DMARxDescTab+i+1);
    }
    else
    {

      DMARxDesc->Buffer2NextDescAddr = (uint32_t)(DMARxDescTab);
    }
  }


  ETH->DMARDLAR = (uint32_t) DMARxDescTab;

  DMA_RX_FRAME_infos = &RX_Frame_Descriptor;

}
