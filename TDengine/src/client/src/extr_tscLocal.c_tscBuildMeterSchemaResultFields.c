
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int order; } ;
struct TYPE_7__ {int numOfCols; int fieldsInfo; TYPE_1__ order; } ;
struct TYPE_6__ {TYPE_3__ cmd; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;


 int TSDB_COL_NAME_LEN ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_DATA_TYPE_INT ;
 int TSQL_SO_ASC ;
 int tscFieldInfoSetValue (int *,int,int ,char*,int) ;

__attribute__((used)) static int32_t tscBuildMeterSchemaResultFields(SSqlObj *pSql, int32_t numOfCols, int32_t typeColLength,
                                               int32_t noteColLength) {
  int32_t rowLen = 0;
  SSqlCmd *pCmd = &pSql->cmd;
  pCmd->numOfCols = numOfCols;

  pCmd->order.order = TSQL_SO_ASC;

  tscFieldInfoSetValue(&pCmd->fieldsInfo, 0, TSDB_DATA_TYPE_BINARY, "Field", TSDB_COL_NAME_LEN);
  rowLen += TSDB_COL_NAME_LEN;

  tscFieldInfoSetValue(&pCmd->fieldsInfo, 1, TSDB_DATA_TYPE_BINARY, "Type", typeColLength);
  rowLen += typeColLength;

  tscFieldInfoSetValue(&pCmd->fieldsInfo, 2, TSDB_DATA_TYPE_INT, "Length", sizeof(int32_t));
  rowLen += sizeof(int32_t);

  tscFieldInfoSetValue(&pCmd->fieldsInfo, 3, TSDB_DATA_TYPE_BINARY, "Note", noteColLength);
  rowLen += noteColLength;

  return rowLen;
}
