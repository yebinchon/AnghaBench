
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int tColModel ;
typedef scalar_t__ int64_t ;
typedef int int16_t ;
struct TYPE_20__ {int discard; int prevRowOfInput; TYPE_10__* discardData; TYPE_4__* pDesc; int rowSize; } ;
struct TYPE_19__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_16__ {int numOfGroupCols; } ;
struct TYPE_15__ {int order; } ;
struct TYPE_18__ {scalar_t__ stime; scalar_t__ etime; TYPE_3__ groupbyExpr; TYPE_2__ order; int intervalTimeUnit; int nAggTimeInterval; } ;
struct TYPE_17__ {int * pSchema; } ;
struct TYPE_14__ {int precision; } ;
struct TYPE_13__ {scalar_t__ numOfElems; } ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SMeterMetaInfo ;
typedef TYPE_7__ SLocalReducer ;
typedef int SInterpolationInfo ;


 int tColModelAppend (int *,TYPE_10__*,int ,int ,int,int) ;
 scalar_t__ taosGetIntervalStartTimestamp (scalar_t__,int ,int ,int ) ;
 int taosInitInterpoInfo (int *,int ,scalar_t__,int ,int ) ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;

void savePrevRecordAndSetupInterpoInfo(SLocalReducer *pLocalReducer, SSqlCmd *pCmd, SInterpolationInfo *pInterpoInfo) {

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  int16_t prec = pMeterMetaInfo->pMeterMeta->precision;

  int64_t stime = (pCmd->stime < pCmd->etime) ? pCmd->stime : pCmd->etime;
  int64_t revisedSTime = taosGetIntervalStartTimestamp(stime, pCmd->nAggTimeInterval, pCmd->intervalTimeUnit, prec);

  taosInitInterpoInfo(pInterpoInfo, pCmd->order.order, revisedSTime, pCmd->groupbyExpr.numOfGroupCols,
                      pLocalReducer->rowSize);

  pLocalReducer->discard = 1;
  pLocalReducer->discardData->numOfElems = 0;

  tColModel *pModel = pLocalReducer->pDesc->pSchema;
  tColModelAppend(pModel, pLocalReducer->discardData, pLocalReducer->prevRowOfInput, 0, 1, 1);
}
