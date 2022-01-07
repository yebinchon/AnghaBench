
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int int8_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_26__ {scalar_t__ hasUnprocessedRow; TYPE_3__* resColModel; int ** pLocalDataSrc; int hasPrevRow; int discard; int interpolationInfo; } ;
struct TYPE_25__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_20__ {int order; } ;
struct TYPE_24__ {scalar_t__ interpoType; scalar_t__ stime; scalar_t__ etime; int nAggTimeInterval; int intervalTimeUnit; TYPE_2__ order; } ;
struct TYPE_22__ {scalar_t__ numOfRows; TYPE_8__* pLocalReducer; } ;
struct TYPE_23__ {TYPE_4__ res; TYPE_6__ cmd; } ;
struct TYPE_21__ {int maxCapacity; } ;
struct TYPE_19__ {int precision; } ;
typedef TYPE_4__ SSqlRes ;
typedef TYPE_5__ SSqlObj ;
typedef TYPE_6__ SSqlCmd ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SLocalReducer ;
typedef int SInterpolationInfo ;


 scalar_t__ TSDB_INTERPO_NONE ;
 int doInterpolateResult (TYPE_5__*,TYPE_8__*,int) ;
 scalar_t__ isAllSourcesCompleted (TYPE_8__*) ;
 int resetEnvForNewResultset (TYPE_4__*,TYPE_6__*,TYPE_8__*) ;
 scalar_t__ saveGroupResultInfo (TYPE_5__*) ;
 scalar_t__ taosGetNumOfResultWithInterpo (int *,int *,int ,int ,scalar_t__,int ) ;
 scalar_t__ taosGetRevisedEndKey (scalar_t__,int ,int ,int ,int ) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_6__*,int ) ;

__attribute__((used)) static bool doHandleLastRemainData(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  SLocalReducer * pLocalReducer = pRes->pLocalReducer;
  SInterpolationInfo *pInterpoInfo = &pLocalReducer->interpolationInfo;

  bool prevGroupCompleted = (!pLocalReducer->discard) && pLocalReducer->hasUnprocessedRow;

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  int8_t precision = pMeterMetaInfo->pMeterMeta->precision;

  if ((isAllSourcesCompleted(pLocalReducer) && !pLocalReducer->hasPrevRow) || pLocalReducer->pLocalDataSrc[0] == ((void*)0) ||
      prevGroupCompleted) {

    if (pCmd->interpoType != TSDB_INTERPO_NONE) {
      int64_t etime = (pCmd->stime < pCmd->etime) ? pCmd->etime : pCmd->stime;

      etime = taosGetRevisedEndKey(etime, pCmd->order.order, pCmd->nAggTimeInterval, pCmd->intervalTimeUnit, precision);
      int32_t rows = taosGetNumOfResultWithInterpo(pInterpoInfo, ((void*)0), 0, pCmd->nAggTimeInterval, etime,
                                                   pLocalReducer->resColModel->maxCapacity);
      if (rows > 0) {
        doInterpolateResult(pSql, pLocalReducer, 1);
      }
    }







    if (pRes->numOfRows > 0 || (isAllSourcesCompleted(pLocalReducer) && (!pLocalReducer->hasUnprocessedRow))) {
      return 1;
    }


    if (saveGroupResultInfo(pSql)) {
      return 1;
    }

    resetEnvForNewResultset(pRes, pCmd, pLocalReducer);
  }

  return 0;
}
