
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ ControlBufferSize; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 scalar_t__ ETH_DMARXDESC_BUFFER2_SIZESHIFT ;
 scalar_t__ ETH_DMARxDesc_Buffer1 ;
 scalar_t__ ETH_DMARxDesc_RBS1 ;
 scalar_t__ ETH_DMARxDesc_RBS2 ;
 int IS_ETH_DMA_RXDESC_BUFFER (scalar_t__) ;
 int assert_param (int ) ;

uint32_t ETH_GetDMARxDescBufferSize(ETH_DMADESCTypeDef *DMARxDesc, uint32_t DMARxDesc_Buffer)
{

  assert_param(IS_ETH_DMA_RXDESC_BUFFER(DMARxDesc_Buffer));

  if(DMARxDesc_Buffer != ETH_DMARxDesc_Buffer1)
  {

    return ((DMARxDesc->ControlBufferSize & ETH_DMARxDesc_RBS2) >> ETH_DMARXDESC_BUFFER2_SIZESHIFT);
  }
  else
  {

    return (DMARxDesc->ControlBufferSize & ETH_DMARxDesc_RBS1);
  }
}
