
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef size_t int32_t ;
typedef short int16_t ;
struct TYPE_24__ {int numOfFilters; short colId; scalar_t__ bytes; int * filters; } ;
struct TYPE_29__ {scalar_t__ order; int orderColId; } ;
struct TYPE_26__ {int offset; int limit; } ;
struct TYPE_33__ {short numOfCols; short numOfOutputCols; TYPE_9__* colList; TYPE_9__* pFilterInfo; int precision; TYPE_6__* pSelectExpr; TYPE_4__ order; int rowSize; int dataRowSize; TYPE_1__ limit; } ;
struct TYPE_34__ {int* req; short colIdxInBuf; int colIdx; TYPE_11__ data; TYPE_8__ query; } ;
struct TYPE_32__ {short numOfCols; short numOfOutputCols; scalar_t__ order; int orderColId; int offset; int limit; TYPE_11__* colList; } ;
struct TYPE_27__ {short colId; short colIdxInBuf; int colIdx; int flag; } ;
struct TYPE_28__ {short functionId; TYPE_2__ colInfo; } ;
struct TYPE_31__ {scalar_t__ resBytes; TYPE_3__ pBase; } ;
struct TYPE_30__ {int precision; } ;
struct TYPE_25__ {TYPE_5__ cfg; } ;
struct TYPE_23__ {size_t vnode; } ;
typedef TYPE_6__ SSqlFunctionExpr ;
typedef int SSingleColumnFilterInfo ;
typedef TYPE_7__ SQueryMeterMsg ;
typedef TYPE_8__ SQuery ;
typedef TYPE_9__ SQInfo ;
typedef TYPE_10__ SMeterObj ;
typedef TYPE_11__ SColumnInfo ;
typedef int SColumnFilterInfo ;


 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 short TSDB_FUNC_FIRST ;
 short TSDB_FUNC_FIRST_DST ;
 short TSDB_FUNC_LAST ;
 short TSDB_FUNC_LAST_DST ;
 short TSDB_FUNC_STDDEV ;
 scalar_t__ TSQL_SO_ASC ;
 scalar_t__ TSQL_SO_DESC ;
 int assert (int) ;
 void* calloc (int,int) ;
 int tfree (TYPE_9__*) ;
 int tscColumnFilterInfoCopy (int *,int *) ;
 size_t vnodeCreateFilterInfo (TYPE_9__*,TYPE_8__*) ;
 TYPE_15__* vnodeList ;
 int vnodeUpdateFilterColumnIndex (TYPE_8__*) ;
 int vnodeUpdateQueryColumnIndex (TYPE_8__*,TYPE_10__*) ;

__attribute__((used)) static SQInfo *vnodeAllocateQInfoCommon(SQueryMeterMsg *pQueryMsg, SMeterObj *pMeterObj, SSqlFunctionExpr *pExprs) {
  SQInfo *pQInfo = (SQInfo *)calloc(1, sizeof(SQInfo));
  if (pQInfo == ((void*)0)) {
    return ((void*)0);
  }

  SQuery *pQuery = &(pQInfo->query);

  SColumnInfo *colList = pQueryMsg->colList;

  short numOfCols = pQueryMsg->numOfCols;
  short numOfOutputCols = pQueryMsg->numOfOutputCols;

  pQuery->numOfCols = numOfCols;
  pQuery->numOfOutputCols = numOfOutputCols;

  pQuery->limit.limit = pQueryMsg->limit;
  pQuery->limit.offset = pQueryMsg->offset;

  pQuery->order.order = pQueryMsg->order;
  pQuery->order.orderColId = pQueryMsg->orderColId;

  pQuery->colList = calloc(1, sizeof(SSingleColumnFilterInfo) * numOfCols);
  if (pQuery->colList == ((void*)0)) {
    goto _clean_memory;
  }

  for (int16_t i = 0; i < numOfCols; ++i) {
    pQuery->colList[i].req[0] = 1;
    pQuery->colList[i].colIdxInBuf = i;

    pQuery->colList[i].data = colList[i];
    SColumnInfo *pColInfo = &pQuery->colList[i].data;

    pColInfo->filters = ((void*)0);

    if (colList[i].numOfFilters > 0) {
      pColInfo->filters = calloc(1, colList[i].numOfFilters * sizeof(SColumnFilterInfo));

      for (int32_t j = 0; j < colList[i].numOfFilters; ++j) {
        tscColumnFilterInfoCopy(&pColInfo->filters[j], &colList[i].filters[j]);
      }
    } else {
      pQuery->colList[i].data.filters = ((void*)0);
    }

    pQuery->dataRowSize += colList[i].bytes;
  }

  vnodeUpdateQueryColumnIndex(pQuery, pMeterObj);

  for (int16_t col = 0; col < numOfOutputCols; ++col) {
    assert(pExprs[col].resBytes > 0);

    pQuery->rowSize += pExprs[col].resBytes;
    if (TSDB_COL_IS_TAG(pExprs[col].pBase.colInfo.flag)) {
      continue;
    }

    int16_t colId = pExprs[col].pBase.colInfo.colId;
    int16_t functId = pExprs[col].pBase.functionId;


    for (int32_t k = 0; k < numOfCols; ++k) {
      if (pQuery->colList[k].data.colId == colId) {
        pExprs[col].pBase.colInfo.colIdxInBuf = (int16_t)k;
        pExprs[col].pBase.colInfo.colIdx = pQuery->colList[k].colIdx;

        if (((functId == TSDB_FUNC_FIRST_DST || functId == TSDB_FUNC_FIRST) && pQuery->order.order == TSQL_SO_DESC) ||
            ((functId == TSDB_FUNC_LAST_DST || functId == TSDB_FUNC_LAST) && pQuery->order.order == TSQL_SO_ASC)) {
          pQuery->colList[k].req[1] = 1;
        } else if (functId == TSDB_FUNC_STDDEV) {
          pQuery->colList[k].req[1] = 1;
        }
        break;
      }
    }
  }

  pQuery->pSelectExpr = pExprs;

  int32_t ret = vnodeCreateFilterInfo(pQInfo, pQuery);
  if (ret != TSDB_CODE_SUCCESS) {
    goto _clean_memory;
  }

  vnodeUpdateFilterColumnIndex(pQuery);
  pQuery->precision = vnodeList[pMeterObj->vnode].cfg.precision;

  return pQInfo;

_clean_memory:
  tfree(pQuery->pFilterInfo);
  tfree(pQuery->colList);
  tfree(pQInfo);

  return ((void*)0);
}
