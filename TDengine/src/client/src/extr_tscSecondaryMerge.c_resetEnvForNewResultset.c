
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int int16_t ;
struct TYPE_21__ {int rowSize; int interpolationInfo; int offset; } ;
struct TYPE_20__ {TYPE_2__* pMeterMeta; } ;
struct TYPE_17__ {int numOfGroupCols; } ;
struct TYPE_16__ {int order; } ;
struct TYPE_14__ {int offset; } ;
struct TYPE_19__ {scalar_t__ interpoType; scalar_t__ stime; scalar_t__ etime; TYPE_4__ groupbyExpr; TYPE_3__ order; int intervalTimeUnit; int nAggTimeInterval; TYPE_1__ limit; } ;
struct TYPE_18__ {scalar_t__ numOfTotal; scalar_t__ numOfRows; } ;
struct TYPE_15__ {int precision; } ;
typedef TYPE_5__ SSqlRes ;
typedef TYPE_6__ SSqlCmd ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SLocalReducer ;


 scalar_t__ TSDB_INTERPO_NONE ;
 scalar_t__ taosGetIntervalStartTimestamp (scalar_t__,int ,int ,int ) ;
 int taosInitInterpoInfo (int *,int ,scalar_t__,int ,int ) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_6__*,int ) ;

__attribute__((used)) static void resetEnvForNewResultset(SSqlRes *pRes, SSqlCmd *pCmd, SLocalReducer *pLocalReducer) {

  pRes->numOfRows = 0;
  pRes->numOfTotal = 0;
  pCmd->limit.offset = pLocalReducer->offset;

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  int16_t precision = pMeterMetaInfo->pMeterMeta->precision;


  if (pCmd->interpoType != TSDB_INTERPO_NONE) {
    int64_t stime = (pCmd->stime < pCmd->etime) ? pCmd->stime : pCmd->etime;
    int64_t newTime = taosGetIntervalStartTimestamp(stime, pCmd->nAggTimeInterval, pCmd->intervalTimeUnit, precision);

    taosInitInterpoInfo(&pLocalReducer->interpolationInfo, pCmd->order.order, newTime, pCmd->groupbyExpr.numOfGroupCols,
                        pLocalReducer->rowSize);
  }
}
