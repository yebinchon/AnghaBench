
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ data; } ;
typedef TYPE_2__ tFilePage ;
typedef size_t int32_t ;
struct TYPE_16__ {int numOfPages; int * pageList; } ;
struct TYPE_13__ {TYPE_1__* pCtx; TYPE_4__* pQuery; } ;
struct TYPE_15__ {TYPE_3__ runtimeEnv; } ;
struct TYPE_14__ {size_t numOfOutputCols; } ;
struct TYPE_11__ {scalar_t__ aOutputBuf; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SMeterQuerySupportObj ;
typedef TYPE_6__ SMeterQueryInfo ;


 scalar_t__ DEFAULT_INTERN_BUF_SIZE ;
 int assert (int) ;
 TYPE_2__* getFilePage (TYPE_5__*,int ) ;

__attribute__((used)) static void validateResultBuf(SMeterQuerySupportObj *pSupporter, SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pSupporter->runtimeEnv.pQuery;

  tFilePage *newOutput = getFilePage(pSupporter, pMeterQueryInfo->pageList[pMeterQueryInfo->numOfPages - 1]);
  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    assert(pRuntimeEnv->pCtx[i].aOutputBuf - newOutput->data < DEFAULT_INTERN_BUF_SIZE);
  }
}
