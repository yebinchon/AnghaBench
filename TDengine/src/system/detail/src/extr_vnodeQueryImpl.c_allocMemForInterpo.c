
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tFilePage ;
typedef size_t int32_t ;
struct TYPE_14__ {int pointsPerFileBlock; } ;
struct TYPE_10__ {int * pInterpoBuf; } ;
struct TYPE_13__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_12__ {scalar_t__ interpoType; scalar_t__ nAggTimeInterval; int numOfOutputCols; TYPE_2__* pSelectExpr; } ;
struct TYPE_11__ {int resBytes; } ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterQuerySupportObj ;
typedef TYPE_5__ SMeterObj ;


 int POINTER_BYTES ;
 scalar_t__ TSDB_INTERPO_NONE ;
 int assert (int) ;
 int calloc (int,int) ;
 scalar_t__ isPointInterpoQuery (TYPE_3__*) ;
 int * malloc (int) ;

__attribute__((used)) static void allocMemForInterpo(SMeterQuerySupportObj *pSupporter, SQuery *pQuery, SMeterObj *pMeterObj) {
  if (pQuery->interpoType != TSDB_INTERPO_NONE) {
    assert(pQuery->nAggTimeInterval > 0 || (pQuery->nAggTimeInterval == 0 && isPointInterpoQuery(pQuery)));

    if (pQuery->nAggTimeInterval > 0) {
      pSupporter->runtimeEnv.pInterpoBuf = malloc(POINTER_BYTES * pQuery->numOfOutputCols);

      for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
        pSupporter->runtimeEnv.pInterpoBuf[i] =
            calloc(1, sizeof(tFilePage) + pQuery->pSelectExpr[i].resBytes * pMeterObj->pointsPerFileBlock);
      }
    }
  }
}
