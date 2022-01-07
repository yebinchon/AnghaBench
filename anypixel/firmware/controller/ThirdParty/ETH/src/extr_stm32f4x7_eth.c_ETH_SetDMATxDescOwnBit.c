
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 int ETH_DMATxDesc_OWN ;

void ETH_SetDMATxDescOwnBit(ETH_DMADESCTypeDef *DMATxDesc)
{

  DMATxDesc->Status |= ETH_DMATxDesc_OWN;
}
