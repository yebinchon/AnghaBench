
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_17__ {int vnodeIndex; } ;
struct TYPE_16__ {TYPE_7__ cur; int tag; } ;
struct TYPE_14__ {int * pTSBuf; TYPE_2__* pCtx; } ;
struct TYPE_15__ {TYPE_3__ runtimeEnv; int * pMeterSidExtInfo; int pSidSet; } ;
struct TYPE_12__ {int i64Key; } ;
struct TYPE_13__ {TYPE_1__ tag; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef int SOutputRes ;
typedef TYPE_4__ SMeterQuerySupportObj ;
typedef TYPE_5__ SMeterQueryInfo ;


 int initCtxOutputBuf (TYPE_3__*) ;
 int setGroupOutputBuffer (TYPE_3__*,int *) ;
 int tsBufGetElemStartPos (int *,int ,int ) ;
 int tsBufSetCursor (int *,TYPE_7__*) ;
 int vnodeSetTagValueInParam (int ,TYPE_3__*,int ) ;

void setExecutionContext(SMeterQuerySupportObj *pSupporter, SOutputRes *outputRes, int32_t meterIdx, int32_t groupIdx,
                         SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;

  setGroupOutputBuffer(pRuntimeEnv, &outputRes[groupIdx]);
  initCtxOutputBuf(pRuntimeEnv);

  vnodeSetTagValueInParam(pSupporter->pSidSet, pRuntimeEnv, pSupporter->pMeterSidExtInfo[meterIdx]);


  if (pSupporter->runtimeEnv.pTSBuf != ((void*)0)) {
    if (pMeterQueryInfo->cur.vnodeIndex == -1) {
      pMeterQueryInfo->tag = pRuntimeEnv->pCtx[0].tag.i64Key;

      tsBufGetElemStartPos(pSupporter->runtimeEnv.pTSBuf, 0, pMeterQueryInfo->tag);
    } else {
      tsBufSetCursor(pSupporter->runtimeEnv.pTSBuf, &pMeterQueryInfo->cur);
    }
  }
}
