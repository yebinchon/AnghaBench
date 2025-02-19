
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t int32_t ;
typedef int int16_t ;
typedef void* __filter_func_t ;
struct TYPE_12__ {scalar_t__ numOfFilters; int bytes; int type; TYPE_2__* filters; } ;
struct TYPE_17__ {TYPE_3__ data; } ;
struct TYPE_10__ {int * filters; } ;
struct TYPE_16__ {TYPE_1__ data; } ;
struct TYPE_11__ {size_t lowerRelOptr; size_t upperRelOptr; } ;
struct TYPE_15__ {int bytes; int * fp; TYPE_2__ filterInfo; } ;
struct TYPE_14__ {size_t numOfCols; int numOfFilterCols; TYPE_9__* colList; TYPE_4__* pFilterInfo; } ;
struct TYPE_13__ {int numOfFilters; TYPE_6__* pFilters; TYPE_8__ info; } ;
typedef TYPE_4__ SSingleColumnFilterInfo ;
typedef TYPE_5__ SQuery ;
typedef int SColumnInfoEx ;
typedef TYPE_6__ SColumnFilterElem ;


 size_t TSDB_CODE_INVALID_QUERY_MSG ;
 size_t TSDB_CODE_SUCCESS ;
 size_t TSDB_RELATION_INVALID ;
 size_t TSDB_RELATION_LARGE ;
 size_t TSDB_RELATION_LARGE_EQUAL ;
 size_t TSDB_RELATION_LESS ;
 size_t TSDB_RELATION_LESS_EQUAL ;
 int assert (int ) ;
 void* calloc (int,int) ;
 int dError (char*,void*,...) ;
 int memcpy (TYPE_8__*,TYPE_9__*,int) ;
 void** vnodeGetRangeFilterFuncArray (int ) ;
 void** vnodeGetValueFilterFuncArray (int ) ;

int32_t vnodeCreateFilterInfo(void* pQInfo, SQuery* pQuery) {
  for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
    if (pQuery->colList[i].data.numOfFilters > 0) {
      pQuery->numOfFilterCols++;
    }
  }

  if (pQuery->numOfFilterCols == 0) {
    return TSDB_CODE_SUCCESS;
  }

  pQuery->pFilterInfo = calloc(1, sizeof(SSingleColumnFilterInfo) * pQuery->numOfFilterCols);

  for (int32_t i = 0, j = 0; i < pQuery->numOfCols; ++i) {
    if (pQuery->colList[i].data.numOfFilters > 0) {
      SSingleColumnFilterInfo* pFilterInfo = &pQuery->pFilterInfo[j];

      memcpy(&pFilterInfo->info, &pQuery->colList[i], sizeof(SColumnInfoEx));
      pFilterInfo->info.data.filters = ((void*)0);

      pFilterInfo->numOfFilters = pQuery->colList[i].data.numOfFilters;
      pFilterInfo->pFilters = calloc(pFilterInfo->numOfFilters, sizeof(SColumnFilterElem));

      for(int32_t f = 0; f < pFilterInfo->numOfFilters; ++f) {
        SColumnFilterElem *pSingleColFilter = &pFilterInfo->pFilters[f];
        pSingleColFilter->filterInfo = pQuery->colList[i].data.filters[f];

        int32_t lower = pSingleColFilter->filterInfo.lowerRelOptr;
        int32_t upper = pSingleColFilter->filterInfo.upperRelOptr;

        if (lower == TSDB_RELATION_INVALID && upper == TSDB_RELATION_INVALID) {
          dError("QInfo:%p invalid filter info", pQInfo);
          return TSDB_CODE_INVALID_QUERY_MSG;
        }

        int16_t type = pQuery->colList[i].data.type;
        int16_t bytes = pQuery->colList[i].data.bytes;

        __filter_func_t *rangeFilterArray = vnodeGetRangeFilterFuncArray(type);
        __filter_func_t *filterArray = vnodeGetValueFilterFuncArray(type);

        if (rangeFilterArray == ((void*)0) && filterArray == ((void*)0)) {
          dError("QInfo:%p failed to get filter function, invalid data type:%d", pQInfo, type);
          return TSDB_CODE_INVALID_QUERY_MSG;
        }

        if ((lower == TSDB_RELATION_LARGE_EQUAL || lower == TSDB_RELATION_LARGE) &&
            (upper == TSDB_RELATION_LESS_EQUAL || upper == TSDB_RELATION_LESS)) {
          if (lower == TSDB_RELATION_LARGE_EQUAL) {
            if (upper == TSDB_RELATION_LESS_EQUAL) {
              pSingleColFilter->fp = rangeFilterArray[4];
            } else {
              pSingleColFilter->fp = rangeFilterArray[2];
            }
          } else {
            if (upper == TSDB_RELATION_LESS_EQUAL) {
              pSingleColFilter->fp = rangeFilterArray[3];
            } else {
              pSingleColFilter->fp = rangeFilterArray[1];
            }
          }
        } else {
          if (lower != TSDB_RELATION_INVALID) {
            pSingleColFilter->fp = filterArray[lower];

            if (upper != TSDB_RELATION_INVALID) {
              dError("pQInfo:%p failed to get filter function, invalid filter condition", pQInfo, type);
              return TSDB_CODE_INVALID_QUERY_MSG;
            }
          } else {
            pSingleColFilter->fp = filterArray[upper];
          }
        }
        assert (pSingleColFilter->fp != ((void*)0));
        pSingleColFilter->bytes = bytes;
      }

      j++;
    }
  }

  return TSDB_CODE_SUCCESS;
}
