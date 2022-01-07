
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SSchema {scalar_t__ type; scalar_t__ bytes; int name; } ;
typedef size_t int32_t ;
struct TYPE_2__ {scalar_t__ nSize; } ;


 int TSDB_COL_NAME_LEN ;
 scalar_t__ TSDB_DATA_TYPE_BOOL ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_MAX_BINARY_LEN ;
 size_t TSDB_MAX_BYTES_PER_ROW ;
 int VALIDNUMOFCOLS (size_t) ;
 scalar_t__ strncasecmp (int ,int ,int ) ;
 TYPE_1__* tDataTypeDesc ;

bool isValidSchema(struct SSchema* pSchema, int32_t numOfCols) {
  if (!VALIDNUMOFCOLS(numOfCols)) {
    return 0;
  }


  if (pSchema[0].type != TSDB_DATA_TYPE_TIMESTAMP) {
    return 0;
  }


  int32_t rowLen = 0;

  for (int32_t i = 0; i < numOfCols; ++i) {

    if (pSchema[i].type > TSDB_DATA_TYPE_TIMESTAMP || pSchema[i].type < TSDB_DATA_TYPE_BOOL) {
      return 0;
    }


    if (pSchema[i].type == TSDB_DATA_TYPE_TIMESTAMP) {
      if (pSchema[i].bytes > TSDB_MAX_BINARY_LEN) {
        return 0;
      }
    } else {
      if (pSchema[i].bytes != tDataTypeDesc[pSchema[i].type].nSize) {
        return 0;
      }
    }


    for (int32_t j = i + 1; j < numOfCols; ++j) {
      if (strncasecmp(pSchema[i].name, pSchema[j].name, TSDB_COL_NAME_LEN) == 0) {
        return 0;
      }
    }

    rowLen += pSchema[i].bytes;
  }


  return (rowLen <= TSDB_MAX_BYTES_PER_ROW);
}
