
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * pMeterObj; TYPE_2__* pQuery; } ;
struct TYPE_10__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_9__ {int ekey; int skey; } ;
typedef int TSKEY ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef int SPointInterpoSupporter ;
typedef TYPE_3__ SMeterQuerySupportObj ;
typedef int SMeterObj ;


 int getAlignedIntervalQueryRange (TYPE_2__*,int,int ,int) ;
 int getNeighborPoints (TYPE_3__*,int *,int *) ;
 scalar_t__ isPointInterpoQuery (TYPE_2__*) ;

__attribute__((used)) static bool doGetQueryPos(TSKEY key, SMeterQuerySupportObj *pSupporter, SPointInterpoSupporter *pPointInterpSupporter) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SMeterObj * pMeterObj = pRuntimeEnv->pMeterObj;


  if (key != -1 && key <= pQuery->ekey) {
    if (isPointInterpoQuery(pQuery)) {
      return getNeighborPoints(pSupporter, pMeterObj, pPointInterpSupporter);
    } else {
      getAlignedIntervalQueryRange(pQuery, key, pQuery->skey, pQuery->ekey);
      return 1;
    }
  } else {
    if (isPointInterpoQuery(pQuery)) {
      return getNeighborPoints(pSupporter, pMeterObj, pPointInterpSupporter);
    } else {
      return 0;
    }
  }
}
