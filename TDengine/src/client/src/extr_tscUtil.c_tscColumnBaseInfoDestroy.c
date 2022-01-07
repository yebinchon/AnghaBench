
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_6__ {scalar_t__ numOfFilters; int filterOnBinary; struct TYPE_6__* filterInfo; struct TYPE_6__* pz; } ;
struct TYPE_5__ {scalar_t__ numOfCols; TYPE_2__* pColList; } ;
typedef TYPE_1__ SColumnBaseInfo ;
typedef TYPE_2__ SColumnBase ;


 scalar_t__ TSDB_MAX_COLUMNS ;
 int assert (int) ;
 int tfree (TYPE_2__*) ;

void tscColumnBaseInfoDestroy(SColumnBaseInfo* pColumnBaseInfo) {
  if (pColumnBaseInfo == ((void*)0)) {
    return;
  }

  assert(pColumnBaseInfo->numOfCols <= TSDB_MAX_COLUMNS);

  for (int32_t i = 0; i < pColumnBaseInfo->numOfCols; ++i) {
    SColumnBase* pColBase = &(pColumnBaseInfo->pColList[i]);

    if (pColBase->numOfFilters > 0) {
      for (int32_t j = 0; j < pColBase->numOfFilters; ++j) {
        assert(pColBase->filterInfo[j].filterOnBinary == 0 || pColBase->filterInfo[j].filterOnBinary == 1);

        if (pColBase->filterInfo[j].filterOnBinary) {
          tfree(pColBase->filterInfo[j].pz);
        }
      }
    }

    tfree(pColBase->filterInfo);
  }

  tfree(pColumnBaseInfo->pColList);
}
