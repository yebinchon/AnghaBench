
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int int64_t ;
typedef size_t int32_t ;
struct TYPE_20__ {size_t numOfFiles; int * pHeaderFiles; } ;
struct TYPE_24__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_23__ {int member_0; } ;
struct TYPE_21__ {int pointsRead; } ;
struct TYPE_22__ {TYPE_5__* pMeterQuerySupporter; TYPE_2__ query; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SQInfo ;
typedef TYPE_4__ SPointInterpoSupporter ;
typedef TYPE_5__ SMeterQuerySupportObj ;


 int assert (int) ;
 int doFinalizeResult (TYPE_1__*) ;
 int forwardCtxOutputBuf (TYPE_1__*,int) ;
 int getNumOfResult (TYPE_1__*) ;
 int isFirstLastRowQuery (TYPE_2__*) ;
 int multimeterMultioutputHelper (TYPE_3__*,int*,int*,size_t,size_t) ;
 int normalizedFirstQueryRange (int,int,TYPE_5__*,TYPE_4__*) ;
 int pointInterpSupporterDestroy (TYPE_4__*) ;
 int pointInterpSupporterInit (TYPE_2__*,TYPE_4__*) ;
 int pointInterpSupporterSetData (TYPE_3__*,TYPE_4__*) ;
 int resetMMapWindow (int *) ;
 int vnodeScanAllData (TYPE_1__*) ;

__attribute__((used)) static int64_t doCheckMetersInGroup(SQInfo *pQInfo, int32_t index, int32_t start) {
  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;

  bool dataInDisk = 1;
  bool dataInCache = 1;
  if (!multimeterMultioutputHelper(pQInfo, &dataInDisk, &dataInCache, index, start)) {
    return 0;
  }


  for (int32_t i = 0; i < pRuntimeEnv->numOfFiles; ++i) {
    resetMMapWindow(&pRuntimeEnv->pHeaderFiles[i]);
  }


  SPointInterpoSupporter pointInterpSupporter = {0};
  pointInterpSupporterInit(pQuery, &pointInterpSupporter);

  if (!normalizedFirstQueryRange(dataInDisk, dataInCache, pSupporter, &pointInterpSupporter)) {
    pointInterpSupporterDestroy(&pointInterpSupporter);
    return 0;
  }





  pointInterpSupporterSetData(pQInfo, &pointInterpSupporter);
  pointInterpSupporterDestroy(&pointInterpSupporter);

  vnodeScanAllData(pRuntimeEnv);


  if (!isFirstLastRowQuery(pQuery)) {
    doFinalizeResult(pRuntimeEnv);
  }

  int64_t numOfRes = getNumOfResult(pRuntimeEnv);
  assert(numOfRes == 1 || numOfRes == 0);


  if (numOfRes > 0) {
    pQuery->pointsRead += numOfRes;
    forwardCtxOutputBuf(pRuntimeEnv, numOfRes);
  }

  return numOfRes;
}
