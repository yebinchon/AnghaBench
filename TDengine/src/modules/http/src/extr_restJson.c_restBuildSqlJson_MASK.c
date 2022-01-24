#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_12__ {scalar_t__ fd; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; } ;
struct TYPE_11__ {scalar_t__ numOfRows; } ;
struct TYPE_10__ {int type; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/ ** TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  TYPE_2__ HttpSqlCmd ;
typedef  TYPE_3__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonArrEnd ; 
 int /*<<< orphan*/  JsonArrStt ; 
 int REST_TIMESTAMP_FMT_LOCAL_STRING ; 
 int REST_TIMESTAMP_FMT_TIMESTAMP ; 
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
 int /*<<< orphan*/  TSDB_TIME_PRECISION_MICRO ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,...) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ tsRestRowLimit ; 

bool FUNC17(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result, int numOfRows, int timestampFormat) {
  JsonBuf *jsonBuf = FUNC11(pContext);
  if (jsonBuf == NULL) return false;

  cmd->numOfRows += numOfRows;

  int         num_fields = FUNC15(result);
  TAOS_FIELD *fields = FUNC13(result);

  for (int i = 0; i < numOfRows; ++i) {
    TAOS_ROW row = FUNC14(result);

    // data row array begin
    FUNC5(jsonBuf);
    FUNC9(jsonBuf, JsonArrStt);

    for (int i = 0; i < num_fields; i++) {
      FUNC5(jsonBuf);

      if (row[i] == NULL) {
        FUNC6(jsonBuf, "null", 4);
        continue;
      }

      switch (fields[i].type) {
        case TSDB_DATA_TYPE_BOOL:
        case TSDB_DATA_TYPE_TINYINT:
          FUNC3(jsonBuf, *((int8_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_SMALLINT:
          FUNC3(jsonBuf, *((int16_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_INT:
          FUNC3(jsonBuf, *((int32_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_BIGINT:
          FUNC4(jsonBuf, *((int64_t *)row[i]));
          break;
        case TSDB_DATA_TYPE_FLOAT:
          FUNC2(jsonBuf, *((float *)row[i]));
          break;
        case TSDB_DATA_TYPE_DOUBLE:
          FUNC1(jsonBuf, *((double *)row[i]));
          break;
        case TSDB_DATA_TYPE_BINARY:
        case TSDB_DATA_TYPE_NCHAR:
          FUNC7(jsonBuf, row[i], fields[i].bytes);
          break;
        case TSDB_DATA_TYPE_TIMESTAMP:
          if (timestampFormat == REST_TIMESTAMP_FMT_LOCAL_STRING) {
            FUNC8(jsonBuf, *((int64_t *)row[i]), FUNC16(result) == TSDB_TIME_PRECISION_MICRO);
          } else if (timestampFormat == REST_TIMESTAMP_FMT_TIMESTAMP) {
            FUNC4(jsonBuf, *((int64_t *)row[i]));
          } else {
            FUNC10(jsonBuf, *((int64_t *)row[i]), FUNC16(result) == TSDB_TIME_PRECISION_MICRO);
          }
          break;
        default:
          break;
      }
    }

    // data row array end
    FUNC9(jsonBuf, JsonArrEnd);
  }

  if (cmd->numOfRows >= tsRestRowLimit) {
    FUNC12("context:%p, fd:%d, ip:%s, user:%s, retrieve rows:%lld larger than limit:%d, abort retrieve", pContext,
              pContext->fd, pContext->ipstr, pContext->user, cmd->numOfRows, tsRestRowLimit);
    return false;
  }
  else {
    if (pContext->fd <= 0) {
      FUNC0("context:%p, fd:%d, ip:%s, user:%s, connection is closed, abort retrieve", pContext, pContext->fd,
                pContext->ipstr, pContext->user);
      return false;
    }
    else {
      FUNC12("context:%p, fd:%d, ip:%s, user:%s, total rows:%lld retrieved", pContext, pContext->fd, pContext->ipstr,
                pContext->user, cmd->numOfRows);
      return true;
    }
  }
}