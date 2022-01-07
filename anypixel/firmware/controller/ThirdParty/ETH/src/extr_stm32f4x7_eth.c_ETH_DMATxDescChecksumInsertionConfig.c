
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 int IS_ETH_DMA_TXDESC_CHECKSUM (int ) ;
 int assert_param (int ) ;

void ETH_DMATxDescChecksumInsertionConfig(ETH_DMADESCTypeDef *DMATxDesc, uint32_t DMATxDesc_Checksum)
{

  assert_param(IS_ETH_DMA_TXDESC_CHECKSUM(DMATxDesc_Checksum));


  DMATxDesc->Status |= DMATxDesc_Checksum;
}
