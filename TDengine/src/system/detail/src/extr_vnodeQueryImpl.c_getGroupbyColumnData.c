
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef size_t int32_t ;
typedef size_t int16_t ;
struct TYPE_24__ {size_t colId; size_t type; size_t bytes; } ;
struct TYPE_23__ {size_t colId; size_t type; size_t bytes; } ;
struct TYPE_22__ {size_t numOfCols; TYPE_3__* colList; TYPE_5__* pGroupbyExpr; } ;
struct TYPE_21__ {TYPE_4__* pMeterObj; TYPE_7__* pQuery; } ;
struct TYPE_20__ {size_t numOfGroupCols; TYPE_1__* columnInfo; } ;
struct TYPE_19__ {size_t numOfColumns; TYPE_9__* schema; } ;
struct TYPE_17__ {size_t colId; } ;
struct TYPE_18__ {TYPE_2__ data; } ;
struct TYPE_16__ {scalar_t__ flag; size_t colId; } ;
struct TYPE_15__ {size_t numOfCols; } ;
typedef TYPE_5__ SSqlGroupbyExpr ;
typedef TYPE_6__ SQueryRuntimeEnv ;
typedef TYPE_7__ SQuery ;
typedef TYPE_8__ SField ;
typedef TYPE_9__ SColumn ;
typedef TYPE_10__ SBlockInfo ;


 scalar_t__ TSDB_COL_TAG ;
 char* doGetDataBlocks (int,TYPE_6__*,char*,size_t,size_t,size_t,size_t,size_t) ;

__attribute__((used)) static char *getGroupbyColumnData(SQueryRuntimeEnv *pRuntimeEnv, SField *pFields, SBlockInfo *pBlockInfo, char *data,
                                  bool isDiskFileBlock, int16_t *type, int16_t *bytes) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  char * groupbyColumnData = ((void*)0);

  int32_t col = 0;
  int16_t colIndexInBuf = 0;

  SSqlGroupbyExpr *pGroupbyExpr = pQuery->pGroupbyExpr;

  for (int32_t k = 0; k < pGroupbyExpr->numOfGroupCols; ++k) {
    if (pGroupbyExpr->columnInfo[k].flag == TSDB_COL_TAG) {
      continue;
    }

    int32_t colId = pGroupbyExpr->columnInfo[k].colId;

    if (isDiskFileBlock) {
      for (int32_t i = 0; i < pBlockInfo->numOfCols; ++i) {
        if (colId == pFields[i].colId) {
          *type = pFields[i].type;
          *bytes = pFields[i].bytes;
          col = i;
          break;
        }
      }


      for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
        if (colId == pQuery->colList[i].data.colId) {
          colIndexInBuf = i;
          break;
        }
      }
    } else {
      SColumn *pSchema = pRuntimeEnv->pMeterObj->schema;

      for (int32_t i = 0; i < pRuntimeEnv->pMeterObj->numOfColumns; ++i) {
        if (colId == pSchema[i].colId) {
          *type = pSchema[i].type;
          *bytes = pSchema[i].bytes;

          col = i;
          colIndexInBuf = i;
          break;
        }
      }
    }

    int32_t columnIndex = isDiskFileBlock ? colIndexInBuf : col;
    groupbyColumnData =
        doGetDataBlocks(isDiskFileBlock, pRuntimeEnv, data, columnIndex, colId, *type, *bytes, colIndexInBuf);

    break;
  }

  return groupbyColumnData;
}
