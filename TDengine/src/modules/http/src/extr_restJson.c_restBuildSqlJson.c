
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_12__ {scalar_t__ fd; int user; int ipstr; } ;
struct TYPE_11__ {scalar_t__ numOfRows; } ;
struct TYPE_10__ {int type; int bytes; } ;
typedef int ** TAOS_ROW ;
typedef int TAOS_RES ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int JsonBuf ;
typedef TYPE_2__ HttpSqlCmd ;
typedef TYPE_3__ HttpContext ;


 int JsonArrEnd ;
 int JsonArrStt ;
 int REST_TIMESTAMP_FMT_LOCAL_STRING ;
 int REST_TIMESTAMP_FMT_TIMESTAMP ;
 int TSDB_TIME_PRECISION_MICRO ;
 int httpError (char*,TYPE_3__*,scalar_t__,int ,int ) ;
 int httpJsonDouble (int *,double) ;
 int httpJsonFloat (int *,float) ;
 int httpJsonInt (int *,int ) ;
 int httpJsonInt64 (int *,int ) ;
 int httpJsonItemToken (int *) ;
 int httpJsonOriginString (int *,char*,int) ;
 int httpJsonStringForTransMean (int *,int *,int ) ;
 int httpJsonTimestamp (int *,int ,int) ;
 int httpJsonToken (int *,int ) ;
 int httpJsonUtcTimestamp (int *,int ,int) ;
 int * httpMallocJsonBuf (TYPE_3__*) ;
 int httpTrace (char*,TYPE_3__*,scalar_t__,int ,int ,scalar_t__,...) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int ** taos_fetch_row (int *) ;
 int taos_num_fields (int *) ;
 int taos_result_precision (int *) ;
 scalar_t__ tsRestRowLimit ;

bool restBuildSqlJson(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result, int numOfRows, int timestampFormat) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return 0;

  cmd->numOfRows += numOfRows;

  int num_fields = taos_num_fields(result);
  TAOS_FIELD *fields = taos_fetch_fields(result);

  for (int i = 0; i < numOfRows; ++i) {
    TAOS_ROW row = taos_fetch_row(result);


    httpJsonItemToken(jsonBuf);
    httpJsonToken(jsonBuf, JsonArrStt);

    for (int i = 0; i < num_fields; i++) {
      httpJsonItemToken(jsonBuf);

      if (row[i] == ((void*)0)) {
        httpJsonOriginString(jsonBuf, "null", 4);
        continue;
      }

      switch (fields[i].type) {
        case 135:
        case 128:
          httpJsonInt(jsonBuf, *((int8_t *)row[i]));
          break;
        case 130:
          httpJsonInt(jsonBuf, *((int16_t *)row[i]));
          break;
        case 132:
          httpJsonInt(jsonBuf, *((int32_t *)row[i]));
          break;
        case 137:
          httpJsonInt64(jsonBuf, *((int64_t *)row[i]));
          break;
        case 133:
          httpJsonFloat(jsonBuf, *((float *)row[i]));
          break;
        case 134:
          httpJsonDouble(jsonBuf, *((double *)row[i]));
          break;
        case 136:
        case 131:
          httpJsonStringForTransMean(jsonBuf, row[i], fields[i].bytes);
          break;
        case 129:
          if (timestampFormat == REST_TIMESTAMP_FMT_LOCAL_STRING) {
            httpJsonTimestamp(jsonBuf, *((int64_t *)row[i]), taos_result_precision(result) == TSDB_TIME_PRECISION_MICRO);
          } else if (timestampFormat == REST_TIMESTAMP_FMT_TIMESTAMP) {
            httpJsonInt64(jsonBuf, *((int64_t *)row[i]));
          } else {
            httpJsonUtcTimestamp(jsonBuf, *((int64_t *)row[i]), taos_result_precision(result) == TSDB_TIME_PRECISION_MICRO);
          }
          break;
        default:
          break;
      }
    }


    httpJsonToken(jsonBuf, JsonArrEnd);
  }

  if (cmd->numOfRows >= tsRestRowLimit) {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, retrieve rows:%lld larger than limit:%d, abort retrieve", pContext,
              pContext->fd, pContext->ipstr, pContext->user, cmd->numOfRows, tsRestRowLimit);
    return 0;
  }
  else {
    if (pContext->fd <= 0) {
      httpError("context:%p, fd:%d, ip:%s, user:%s, connection is closed, abort retrieve", pContext, pContext->fd,
                pContext->ipstr, pContext->user);
      return 0;
    }
    else {
      httpTrace("context:%p, fd:%d, ip:%s, user:%s, total rows:%lld retrieved", pContext, pContext->fd, pContext->ipstr,
                pContext->user, cmd->numOfRows);
      return 1;
    }
  }
}
