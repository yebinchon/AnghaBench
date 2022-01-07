
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_19__ {scalar_t__ (* fp ) (TYPE_8__*,char*,char*) ;} ;
struct TYPE_18__ {scalar_t__ colId; int max; int min; } ;
struct TYPE_17__ {size_t numOfFilterCols; size_t numOfOutputCols; TYPE_4__* pSelectExpr; TYPE_5__* pFilterInfo; } ;
struct TYPE_12__ {scalar_t__ colId; scalar_t__ type; } ;
struct TYPE_13__ {size_t colIdx; TYPE_1__ data; } ;
struct TYPE_16__ {size_t numOfFilters; TYPE_8__* pFilters; TYPE_2__ info; } ;
struct TYPE_14__ {size_t functionId; } ;
struct TYPE_15__ {TYPE_3__ pBase; } ;
typedef TYPE_5__ SSingleColumnFilterInfo ;
typedef TYPE_6__ SQuery ;
typedef int SQLFunctionCtx ;
typedef TYPE_7__ SField ;


 scalar_t__ TSDB_DATA_TYPE_FLOAT ;
 size_t TSDB_FUNC_BOTTOM ;
 size_t TSDB_FUNC_TOP ;
 scalar_t__ stub1 (TYPE_8__*,char*,char*) ;
 scalar_t__ stub2 (TYPE_8__*,char*,char*) ;
 int top_bot_datablock_filter (int *,size_t,char*,char*) ;
 int vnodeSupportPrefilter (scalar_t__) ;

__attribute__((used)) static bool needToLoadDataBlock(SQuery *pQuery, SField *pField, SQLFunctionCtx *pCtx) {
  if (pField == ((void*)0)) {
    return 0;
  }

  for (int32_t k = 0; k < pQuery->numOfFilterCols; ++k) {
    SSingleColumnFilterInfo *pFilterInfo = &pQuery->pFilterInfo[k];
    int32_t colIndex = pFilterInfo->info.colIdx;


    if (colIndex < 0 || pField[colIndex].colId != pFilterInfo->info.data.colId) {
      continue;
    }


    if (!vnodeSupportPrefilter(pFilterInfo->info.data.type)) {
      continue;
    }

    if (pFilterInfo->info.data.type == TSDB_DATA_TYPE_FLOAT) {
      float minval = *(double *)(&pField[colIndex].min);
      float maxval = *(double *)(&pField[colIndex].max);

      for (int32_t i = 0; i < pFilterInfo->numOfFilters; ++i) {
        if (pFilterInfo->pFilters[i].fp(&pFilterInfo->pFilters[i], (char *)&minval, (char *)&maxval)) {
          return 1;
        }
      }
    } else {
      for (int32_t i = 0; i < pFilterInfo->numOfFilters; ++i) {
        if (pFilterInfo->pFilters[i].fp(&pFilterInfo->pFilters[i], (char *)&pField[colIndex].min,
                                        (char *)&pField[colIndex].max)) {
          return 1;
        }
      }
    }
  }

  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    int32_t functId = pQuery->pSelectExpr[i].pBase.functionId;
    if (functId == TSDB_FUNC_TOP || functId == TSDB_FUNC_BOTTOM) {
      return top_bot_datablock_filter(&pCtx[i], functId, (char *)&pField[i].min, (char *)&pField[i].max);
    }
  }

  return 1;
}
