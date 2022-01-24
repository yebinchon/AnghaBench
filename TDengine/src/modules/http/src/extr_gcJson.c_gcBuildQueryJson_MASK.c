#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* int8_t ;
typedef  int int64_t ;
typedef  char* int32_t ;
typedef  char* int16_t ;
struct TYPE_6__ {scalar_t__ numOfRows; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  table; int /*<<< orphan*/  values; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/ ** TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  TYPE_2__ HttpSqlCmd ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int HTTP_GC_TARGET_SIZE ; 
 int /*<<< orphan*/  JsonArrEnd ; 
 int /*<<< orphan*/  JsonArrStt ; 
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_SMALLINT 130 
#define  TSDB_DATA_TYPE_TIMESTAMP 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int TSDB_TIME_PRECISION_MILLI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 

bool FUNC21(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result, int numOfRows) {
  JsonBuf *jsonBuf = FUNC12(pContext);
  if (jsonBuf == NULL) return false;

  int         num_fields = FUNC19(result);
  TAOS_FIELD *fields = FUNC17(result);
  if (num_fields == 0) {
    return false;
  }

  int precision = FUNC20(result);

  // such as select count(*) from sys.cpu
  // such as select count(*) from sys.cpu group by ipaddr
  // such as select count(*) from sys.cpu interval(1d)
  // such as select count(*) from sys.cpu interval(1d) group by ipaddr
  // such as select count(*) count(*) from sys.cpu group by ipaddr interval(1d)
  int  dataFields = -1;
  int  groupFields = -1;
  bool hasTimestamp = fields[0].type == TSDB_DATA_TYPE_TIMESTAMP;
  if (hasTimestamp) {
    dataFields = 1;
    if (num_fields > 2) groupFields = num_fields - 1;
  } else {
    dataFields = 0;
    if (num_fields > 1) groupFields = num_fields - 1;
  }

  char *refIdBuffer = FUNC2(pContext, cmd->values);
  char *aliasBuffer = FUNC2(pContext, cmd->table);
  char *targetBuffer = FUNC2(pContext, cmd->timestamp);

  if (groupFields == -1 && cmd->numOfRows == 0) {
    FUNC1(jsonBuf, refIdBuffer, aliasBuffer);
    cmd->numOfRows += numOfRows;
  }

  for (int i = 0; i < numOfRows; ++i) {
    TAOS_ROW row = FUNC18(result);

    // for group by
    if (groupFields != -1) {
      char target[HTTP_GC_TARGET_SIZE];

      switch (fields[groupFields].type) {
        case TSDB_DATA_TYPE_BOOL:
        case TSDB_DATA_TYPE_TINYINT:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int8_t *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_SMALLINT:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int16_t *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_INT:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int32_t *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_BIGINT:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_FLOAT:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%.5f", aliasBuffer, *((float *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_DOUBLE:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%.9f", aliasBuffer, *((double *)row[groupFields]));
          break;
        case TSDB_DATA_TYPE_BINARY:
        case TSDB_DATA_TYPE_NCHAR:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%s", aliasBuffer, (char *)row[groupFields]);
          break;
        case TSDB_DATA_TYPE_TIMESTAMP:
          if (precision == TSDB_TIME_PRECISION_MILLI) {
            FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *) row[groupFields]));
          } else {
            FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *) row[groupFields]) / 1000);
          }
          break;
        default:
          FUNC13(target, HTTP_GC_TARGET_SIZE, "%s%s", aliasBuffer, "invalidcol");
          break;
      }

      if (FUNC14(target, targetBuffer) != 0) {
        // first target not write this section
        if (FUNC15(targetBuffer) != 0) {
          FUNC0(jsonBuf);
        }

        // start new target
        FUNC1(jsonBuf, refIdBuffer, target);
        FUNC16(targetBuffer, target, HTTP_GC_TARGET_SIZE);
      }
    }  // end of group by

    // data row array begin
    FUNC7(jsonBuf);
    FUNC11(jsonBuf, JsonArrStt);

    for (int i = dataFields; i >= 0; i--) {
      FUNC7(jsonBuf);
      if (row[i] == NULL) {
        FUNC8(jsonBuf, "null", 4);
        continue;
      }

      switch (fields[i].type) {
        case TSDB_DATA_TYPE_BOOL:
        case TSDB_DATA_TYPE_TINYINT:
          FUNC5(jsonBuf, *((int8_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_SMALLINT:
          FUNC5(jsonBuf, *((int16_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_INT:
          FUNC5(jsonBuf, *((int32_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_BIGINT:
          FUNC6(jsonBuf, *((int64_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_FLOAT:
          FUNC4(jsonBuf, *((float *)row[i]));
          break;
        case TSDB_DATA_TYPE_DOUBLE:
          FUNC3(jsonBuf, *((double *)row[i]));
          break;
        case TSDB_DATA_TYPE_BINARY:
        case TSDB_DATA_TYPE_NCHAR:
          FUNC10(jsonBuf, row[i], fields[i].bytes);
          break;
        case TSDB_DATA_TYPE_TIMESTAMP:
          if (precision == TSDB_TIME_PRECISION_MILLI) { //ms
            FUNC6(jsonBuf, *((int64_t *)row[i]));
          } else {
            FUNC6(jsonBuf, *((int64_t *)row[i]) / 1000);
          }
          break;
        default:
          FUNC9(jsonBuf, "invalidcol", 10);
          break;
      }
    }

    if (dataFields == 0) {
      FUNC7(jsonBuf);
      FUNC9(jsonBuf, "-", 1);
    }

    // data row array end
    FUNC11(jsonBuf, JsonArrEnd);
  }

  return true;
}