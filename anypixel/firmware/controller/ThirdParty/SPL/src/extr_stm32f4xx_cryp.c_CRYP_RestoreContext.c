
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int CR; int IV1RR; int IV1LR; int IV0RR; int IV0LR; int K3RR; int K3LR; int K2RR; int K2LR; int K1RR; int K1LR; int K0RR; int K0LR; } ;
struct TYPE_4__ {int CRYP_IV1RR; int CRYP_IV1LR; int CRYP_IV0RR; int CRYP_IV0LR; int CRYP_K3RR; int CRYP_K3LR; int CRYP_K2RR; int CRYP_K2LR; int CRYP_K1RR; int CRYP_K1LR; int CRYP_K0RR; int CRYP_K0LR; int CR_bits9to2; } ;
typedef TYPE_1__ CRYP_Context ;


 TYPE_3__* CRYP ;
 int CRYP_CR_CRYPEN ;

void CRYP_RestoreContext(CRYP_Context* CRYP_ContextRestore)
{


  CRYP->CR = CRYP_ContextRestore->CR_bits9to2;


  CRYP->K0LR = CRYP_ContextRestore->CRYP_K0LR;
  CRYP->K0RR = CRYP_ContextRestore->CRYP_K0RR;
  CRYP->K1LR = CRYP_ContextRestore->CRYP_K1LR;
  CRYP->K1RR = CRYP_ContextRestore->CRYP_K1RR;
  CRYP->K2LR = CRYP_ContextRestore->CRYP_K2LR;
  CRYP->K2RR = CRYP_ContextRestore->CRYP_K2RR;
  CRYP->K3LR = CRYP_ContextRestore->CRYP_K3LR;
  CRYP->K3RR = CRYP_ContextRestore->CRYP_K3RR;


  CRYP->IV0LR = CRYP_ContextRestore->CRYP_IV0LR;
  CRYP->IV0RR = CRYP_ContextRestore->CRYP_IV0RR;
  CRYP->IV1LR = CRYP_ContextRestore->CRYP_IV1LR;
  CRYP->IV1RR = CRYP_ContextRestore->CRYP_IV1RR;


  CRYP->CR |= CRYP_CR_CRYPEN;
}
