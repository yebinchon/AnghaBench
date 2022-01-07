
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef TYPE_1__ ETH_DMADESCTypeDef ;


 int ETH_DMARxDesc_OWN ;

void ETH_SetDMARxDescOwnBit(ETH_DMADESCTypeDef *DMARxDesc)
{

  DMARxDesc->Status |= ETH_DMARxDesc_OWN;
}
