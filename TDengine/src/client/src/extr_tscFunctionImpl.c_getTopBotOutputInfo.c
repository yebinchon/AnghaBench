
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ currentStage; int * aOutputBuf; } ;
struct TYPE_6__ {int * interResultBuf; scalar_t__ superTableQ; } ;
typedef int STopBotInfo ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 scalar_t__ SECONDARY_STAGE_MERGE ;

__attribute__((used)) static STopBotInfo *getTopBotOutputInfo(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);


  if (pResInfo->superTableQ && pCtx->currentStage != SECONDARY_STAGE_MERGE) {
    return pCtx->aOutputBuf;
  } else {
    return pResInfo->interResultBuf;
  }
}
