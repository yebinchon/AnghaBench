
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nField; TYPE_2__* p; } ;
typedef TYPE_1__ tFieldList ;
typedef size_t int32_t ;
struct TYPE_6__ {scalar_t__ type; size_t bytes; int name; } ;
typedef TYPE_2__ TAOS_FIELD ;
typedef int SSqlCmd ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_BOOL ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_MAX_BINARY_LEN ;
 size_t TSDB_MAX_BYTES_PER_ROW ;
 int TSDB_MAX_COLUMNS ;
 scalar_t__ TSDB_MAX_NCHAR_LEN ;
 int assert (int ) ;
 int has (TYPE_1__*,size_t,int ) ;
 int setErrMsg (int *,char const*) ;
 scalar_t__ validateColumnName (int ) ;

__attribute__((used)) static bool validateTableColumnInfo(tFieldList* pFieldList, SSqlCmd* pCmd) {
  assert(pFieldList != ((void*)0));

  const char* msg = "illegal number of columns";
  const char* msg1 = "first column must be timestamp";
  const char* msg2 = "row length exceeds max length";
  const char* msg3 = "duplicated column names";
  const char* msg4 = "invalid data types";
  const char* msg5 = "invalid binary/nchar column length";
  const char* msg6 = "invalid column name";


  if (pFieldList->nField <= 1 || pFieldList->nField > TSDB_MAX_COLUMNS) {
    setErrMsg(pCmd, msg);
    return 0;
  }


  if (pFieldList->p[0].type != TSDB_DATA_TYPE_TIMESTAMP) {
    setErrMsg(pCmd, msg1);
    return 0;
  }

  int32_t nLen = 0;
  for (int32_t i = 0; i < pFieldList->nField; ++i) {
    nLen += pFieldList->p[i].bytes;
  }


  if (nLen > TSDB_MAX_BYTES_PER_ROW) {
    setErrMsg(pCmd, msg2);
    return 0;
  }


  for (int32_t i = 0; i < pFieldList->nField; ++i) {
    TAOS_FIELD* pField = &pFieldList->p[i];
    if (pField->type < TSDB_DATA_TYPE_BOOL || pField->type > TSDB_DATA_TYPE_NCHAR) {
      setErrMsg(pCmd, msg4);
      return 0;
    }

    if ((pField->type == TSDB_DATA_TYPE_BINARY && (pField->bytes <= 0 || pField->bytes > TSDB_MAX_BINARY_LEN)) ||
        (pField->type == TSDB_DATA_TYPE_NCHAR && (pField->bytes <= 0 || pField->bytes > TSDB_MAX_NCHAR_LEN))) {
      setErrMsg(pCmd, msg5);
      return 0;
    }

    if (validateColumnName(pField->name) != TSDB_CODE_SUCCESS) {
      setErrMsg(pCmd, msg6);
      return 0;
    }

    if (has(pFieldList, i + 1, pFieldList->p[i].name) == 1) {
      setErrMsg(pCmd, msg3);
      return 0;
    }
  }

  return 1;
}
