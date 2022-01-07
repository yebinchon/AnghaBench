
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_18__ {scalar_t__ nType; int nLen; } ;
struct TYPE_13__ {int nSQLOptr; TYPE_8__ val; struct TYPE_13__* pRight; } ;
typedef TYPE_1__ tSQLExpr ;
typedef void* int64_t ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_17__ {size_t len; int lowerRelOptr; int upperRelOptr; int lowerBndd; void* pz; int upperBndd; } ;
struct TYPE_16__ {int columnIndex; int tableIndex; } ;
struct TYPE_15__ {int pMeterMeta; } ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef int SSqlCmd ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterMetaInfo ;
typedef TYPE_4__ SColumnIndex ;
typedef TYPE_5__ SColumnFilterInfo ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_BIGINT ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 scalar_t__ TSDB_DATA_TYPE_FLOAT ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_DATA_TYPE_TINYINT ;
 int TSDB_NCHAR_SIZE ;
 int TSDB_RELATION_EQUAL ;
 int TSDB_RELATION_LARGE ;
 int TSDB_RELATION_LARGE_EQUAL ;
 int TSDB_RELATION_LESS ;
 int TSDB_RELATION_LESS_EQUAL ;
 int TSDB_RELATION_LIKE ;
 int TSDB_RELATION_NOT_EQUAL ;
 scalar_t__ calloc (int,int) ;
 int setColumnFilterInfoForTimestamp (int *,TYPE_8__*) ;
 int setErrMsg (int *,char const*) ;
 int tVariantDump (TYPE_8__*,char*,scalar_t__) ;
 TYPE_2__* tsGetColumnSchema (int ,int ) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;
 size_t wcslen (int *) ;

__attribute__((used)) static int32_t doExtractColumnFilterInfo(SSqlCmd* pCmd, SColumnFilterInfo* pColumnFilter, SColumnIndex* columnIndex,
                                         tSQLExpr* pExpr) {
  const char* msg = "not supported filter condition";

  tSQLExpr* pRight = pExpr->pRight;
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, columnIndex->tableIndex);

  SSchema* pSchema = tsGetColumnSchema(pMeterMetaInfo->pMeterMeta, columnIndex->columnIndex);

  int16_t colType = pSchema->type;
  if (colType >= TSDB_DATA_TYPE_TINYINT && colType <= TSDB_DATA_TYPE_BIGINT) {
    colType = TSDB_DATA_TYPE_BIGINT;
  } else if (colType == TSDB_DATA_TYPE_FLOAT || colType == TSDB_DATA_TYPE_DOUBLE) {
    colType = TSDB_DATA_TYPE_DOUBLE;
  } else if ((colType == TSDB_DATA_TYPE_TIMESTAMP) && (TSDB_DATA_TYPE_BINARY == pRight->val.nType)) {
    int retVal = setColumnFilterInfoForTimestamp(pCmd, &pRight->val);
    if (TSDB_CODE_SUCCESS != retVal) {
      return retVal;
    }
  }

  if (pExpr->nSQLOptr == 131 || pExpr->nSQLOptr == 129) {
    tVariantDump(&pRight->val, (char*)&pColumnFilter->upperBndd, colType);
  } else {
    if (colType == TSDB_DATA_TYPE_BINARY) {
      pColumnFilter->pz = (int64_t)calloc(1, pRight->val.nLen + 1);
      pColumnFilter->len = pRight->val.nLen;

      tVariantDump(&pRight->val, (char*)pColumnFilter->pz, colType);
    } else if (colType == TSDB_DATA_TYPE_NCHAR) {

      pColumnFilter->pz = (int64_t)calloc(1, (pRight->val.nLen + 1) * TSDB_NCHAR_SIZE);

      tVariantDump(&pRight->val, (char*)pColumnFilter->pz, colType);

      size_t len = wcslen((wchar_t*)pColumnFilter->pz);
      pColumnFilter->len = len * TSDB_NCHAR_SIZE;
    } else {
      tVariantDump(&pRight->val, (char*)&pColumnFilter->lowerBndd, colType);
    }
  }

  switch (pExpr->nSQLOptr) {
    case 131:
      pColumnFilter->upperRelOptr = TSDB_RELATION_LESS_EQUAL;
      break;
    case 129:
      pColumnFilter->upperRelOptr = TSDB_RELATION_LESS;
      break;
    case 132:
      pColumnFilter->lowerRelOptr = TSDB_RELATION_LARGE;
      break;
    case 133:
      pColumnFilter->lowerRelOptr = TSDB_RELATION_LARGE_EQUAL;
      break;
    case 134:
      pColumnFilter->lowerRelOptr = TSDB_RELATION_EQUAL;
      break;
    case 128:
      pColumnFilter->lowerRelOptr = TSDB_RELATION_NOT_EQUAL;
      break;
    case 130:
      pColumnFilter->lowerRelOptr = TSDB_RELATION_LIKE;
      break;
    default:
      setErrMsg(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}
