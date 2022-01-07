
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ data; } ;
typedef TYPE_2__ tFilePage ;
typedef scalar_t__ int32_t ;
struct TYPE_16__ {TYPE_4__* pQuery; TYPE_1__* pCtx; } ;
struct TYPE_19__ {scalar_t__ subgroupIdx; int offset; TYPE_3__ runtimeEnv; } ;
struct TYPE_18__ {scalar_t__ numOfRows; TYPE_2__** result; } ;
struct TYPE_17__ {scalar_t__ pointsToRead; scalar_t__ numOfOutputCols; TYPE_10__** sdata; } ;
struct TYPE_14__ {scalar_t__ outputBytes; } ;
struct TYPE_13__ {char* data; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SOutputRes ;
typedef TYPE_6__ SMeterQuerySupportObj ;


 int GET_QINFO_ADDR (TYPE_4__*) ;
 scalar_t__ TSQL_SO_ASC ;
 int assert (int) ;
 int dTrace (char*,int ) ;
 int displayInterResult (TYPE_10__**,TYPE_4__*,scalar_t__) ;
 scalar_t__ getSubsetNumber (TYPE_6__*) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int32_t doCopyFromGroupBuf(SMeterQuerySupportObj *pSupporter, SOutputRes *result, int32_t orderType) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  int32_t numOfResult = 0;
  int32_t startIdx = 0;
  int32_t forward = 1;

  dTrace("QInfo:%p start to copy data to dest buf", GET_QINFO_ADDR(pSupporter->runtimeEnv.pQuery));

  int32_t totalSubset = getSubsetNumber(pSupporter);

  if (orderType == TSQL_SO_ASC) {
    startIdx = pSupporter->subgroupIdx;
  } else {
    startIdx = totalSubset - pSupporter->subgroupIdx - 1;
    forward = -1;
  }

  for (int32_t i = startIdx; (i < totalSubset) && (i >= 0); i += forward) {
    if (result[i].numOfRows == 0) {
      pSupporter->offset = 0;
      pSupporter->subgroupIdx += 1;
      continue;
    }

    assert(result[i].numOfRows >= 0 && pSupporter->offset <= 1);

    tFilePage **srcBuf = result[i].result;

    int32_t numOfRowsToCopy = result[i].numOfRows - pSupporter->offset;
    int32_t oldOffset = pSupporter->offset;

    if (numOfRowsToCopy > pQuery->pointsToRead - numOfResult) {

      numOfRowsToCopy = pQuery->pointsToRead - numOfResult;
      pSupporter->offset += numOfRowsToCopy;
    } else {
      pSupporter->offset = 0;
      pSupporter->subgroupIdx += 1;
    }

    for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
      int32_t elemSize = pRuntimeEnv->pCtx[j].outputBytes;
      char * outputBuf = pQuery->sdata[j]->data + numOfResult * elemSize;

      memcpy(outputBuf, srcBuf[j]->data + oldOffset * elemSize, elemSize * numOfRowsToCopy);
    }

    numOfResult += numOfRowsToCopy;
    if (numOfResult == pQuery->pointsToRead) {
      break;
    }
  }

  dTrace("QInfo:%p done copy data to dst buf", GET_QINFO_ADDR(pSupporter->runtimeEnv.pQuery));




  return numOfResult;
}
