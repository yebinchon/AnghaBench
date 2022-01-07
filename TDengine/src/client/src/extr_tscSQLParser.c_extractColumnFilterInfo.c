
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ nSQLOptr; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
struct TYPE_21__ {int columnIndex; int tableIndex; } ;
struct TYPE_23__ {scalar_t__ numOfFilters; TYPE_4__ colIndex; TYPE_5__* filterInfo; } ;
struct TYPE_22__ {int filterOnBinary; } ;
struct TYPE_20__ {int * pMeterMeta; } ;
struct TYPE_19__ {scalar_t__ type; } ;
typedef int SSqlCmd ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterMetaInfo ;
typedef int SMeterMeta ;
typedef TYPE_4__ SColumnIndex ;
typedef TYPE_5__ SColumnFilterInfo ;
typedef TYPE_6__ SColumnBase ;


 scalar_t__ TK_AND ;
 scalar_t__ TK_EQ ;
 scalar_t__ TK_LIKE ;
 scalar_t__ TK_NE ;
 scalar_t__ TK_OR ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 TYPE_5__* addColumnFilterInfo (TYPE_6__*) ;
 scalar_t__ doExtractColumnFilterInfo (int *,TYPE_5__*,TYPE_4__*,TYPE_1__*) ;
 int setErrMsg (int *,char const*) ;
 TYPE_2__* tsGetColumnSchema (int *,int ) ;
 TYPE_6__* tscColumnBaseInfoInsert (int *,TYPE_4__*) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;

__attribute__((used)) static int32_t extractColumnFilterInfo(SSqlCmd* pCmd, SColumnIndex* pIndex, tSQLExpr* pExpr, int32_t sqlOptr) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, pIndex->tableIndex);

  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;
  SSchema* pSchema = tsGetColumnSchema(pMeterMeta, pIndex->columnIndex);

  const char* msg1 = "non binary column not support like operator";
  const char* msg2 = "binary column not support this operator";
  const char* msg3 = "OR is not supported on different column filter";

  SColumnBase* pColumn = tscColumnBaseInfoInsert(pCmd, pIndex);
  SColumnFilterInfo* pColFilter = ((void*)0);





  if (sqlOptr == TK_AND) {

    if (pColumn->numOfFilters == 0) {
      pColFilter = addColumnFilterInfo(pColumn);
    } else {
      pColFilter = &pColumn->filterInfo[0];
    }
  } else if (sqlOptr == TK_OR) {

    pColFilter = addColumnFilterInfo(pColumn);
  } else {
    return TSDB_CODE_INVALID_SQL;
  }

  pColFilter->filterOnBinary =
      ((pSchema->type == TSDB_DATA_TYPE_BINARY || pSchema->type == TSDB_DATA_TYPE_NCHAR) ? 1 : 0);

  if (pColFilter->filterOnBinary) {
    if (pExpr->nSQLOptr != TK_EQ && pExpr->nSQLOptr != TK_NE && pExpr->nSQLOptr != TK_LIKE) {
      setErrMsg(pCmd, msg2);
      return TSDB_CODE_INVALID_SQL;
    }
  } else {
    if (pExpr->nSQLOptr == TK_LIKE) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  pColumn->colIndex = *pIndex;
  return doExtractColumnFilterInfo(pCmd, pColFilter, pIndex, pExpr);
}
