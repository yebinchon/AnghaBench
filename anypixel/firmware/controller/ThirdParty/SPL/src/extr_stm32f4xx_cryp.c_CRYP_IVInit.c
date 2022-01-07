
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int IV1RR; int IV1LR; int IV0RR; int IV0LR; } ;
struct TYPE_4__ {int CRYP_IV1Right; int CRYP_IV1Left; int CRYP_IV0Right; int CRYP_IV0Left; } ;
typedef TYPE_1__ CRYP_IVInitTypeDef ;


 TYPE_3__* CRYP ;

void CRYP_IVInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct)
{
  CRYP->IV0LR = CRYP_IVInitStruct->CRYP_IV0Left;
  CRYP->IV0RR = CRYP_IVInitStruct->CRYP_IV0Right;
  CRYP->IV1LR = CRYP_IVInitStruct->CRYP_IV1Left;
  CRYP->IV1RR = CRYP_IVInitStruct->CRYP_IV1Right;
}
