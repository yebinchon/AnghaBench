
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int DMATDLAR; } ;
struct TYPE_5__ {int Buffer1Addr; int Buffer2NextDescAddr; int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 TYPE_1__* DMATxDescToSet ;
 TYPE_3__* ETH ;
 int ETH_DMATxDesc_TCH ;
 int ETH_TX_BUF_SIZE ;

void ETH_DMATxDescChainInit(ETH_DMADESCTypeDef *DMATxDescTab, uint8_t* TxBuff, uint32_t TxBuffCount)
{
  uint32_t i = 0;
  ETH_DMADESCTypeDef *DMATxDesc;


  DMATxDescToSet = DMATxDescTab;

  for(i=0; i < TxBuffCount; i++)
  {

    DMATxDesc = DMATxDescTab + i;

    DMATxDesc->Status = ETH_DMATxDesc_TCH;


    DMATxDesc->Buffer1Addr = (uint32_t)(&TxBuff[i*ETH_TX_BUF_SIZE]);


    if(i < (TxBuffCount-1))
    {

      DMATxDesc->Buffer2NextDescAddr = (uint32_t)(DMATxDescTab+i+1);
    }
    else
    {

      DMATxDesc->Buffer2NextDescAddr = (uint32_t) DMATxDescTab;
    }
  }


  ETH->DMATDLAR = (uint32_t) DMATxDescTab;
}
