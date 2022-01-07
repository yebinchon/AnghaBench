
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__ data; } ;
typedef TYPE_4__ tFilePage ;
typedef int int8_t ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_19__ {int numOfRawDataInRows; } ;
struct TYPE_28__ {TYPE_3__* resColModel; scalar_t__ pBufForInterpo; TYPE_4__* pResultBuf; TYPE_10__ interpolationInfo; } ;
struct TYPE_27__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_21__ {int order; } ;
struct TYPE_26__ {scalar_t__ interpoType; int nAggTimeInterval; int intervalTimeUnit; TYPE_2__ order; } ;
struct TYPE_24__ {TYPE_9__* pLocalReducer; } ;
struct TYPE_25__ {TYPE_5__ res; TYPE_7__ cmd; } ;
struct TYPE_22__ {int maxCapacity; } ;
struct TYPE_20__ {int precision; } ;
typedef int TSKEY ;
typedef TYPE_5__ SSqlRes ;
typedef TYPE_6__ SSqlObj ;
typedef TYPE_7__ SSqlCmd ;
typedef TYPE_8__ SMeterMetaInfo ;
typedef TYPE_9__ SLocalReducer ;
typedef TYPE_10__ SInterpolationInfo ;


 scalar_t__ TSDB_INTERPO_NONE ;
 int TSDB_KEYSIZE ;
 int assert (int) ;
 int doInterpolateResult (TYPE_6__*,TYPE_9__*,int) ;
 scalar_t__ taosGetNumOfResultWithInterpo (TYPE_10__*,int *,scalar_t__,int ,int ,int ) ;
 int taosGetRevisedEndKey (int ,int ,int ,int ,int ) ;
 scalar_t__ taosHasRemainsDataForInterpolation (TYPE_10__*) ;
 scalar_t__ taosNumOfRemainPoints (TYPE_10__*) ;
 TYPE_8__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;

__attribute__((used)) static bool doInterpolationForCurrentGroup(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  SLocalReducer * pLocalReducer = pRes->pLocalReducer;
  SInterpolationInfo *pInterpoInfo = &pLocalReducer->interpolationInfo;

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  int8_t p = pMeterMetaInfo->pMeterMeta->precision;

  if (taosHasRemainsDataForInterpolation(pInterpoInfo)) {
    assert(pCmd->interpoType != TSDB_INTERPO_NONE);

    tFilePage *pFinalDataBuf = pLocalReducer->pResultBuf;
    int64_t etime = *(int64_t *)(pFinalDataBuf->data + TSDB_KEYSIZE * (pInterpoInfo->numOfRawDataInRows - 1));

    int32_t remain = taosNumOfRemainPoints(pInterpoInfo);
    TSKEY ekey = taosGetRevisedEndKey(etime, pCmd->order.order, pCmd->nAggTimeInterval, pCmd->intervalTimeUnit, p);
    int32_t rows = taosGetNumOfResultWithInterpo(pInterpoInfo, (TSKEY *)pLocalReducer->pBufForInterpo, remain,
                                                 pCmd->nAggTimeInterval, ekey, pLocalReducer->resColModel->maxCapacity);
    if (rows > 0) {
      doInterpolateResult(pSql, pLocalReducer, 0);
    }

    return 1;
  } else {
    return 0;
  }
}
