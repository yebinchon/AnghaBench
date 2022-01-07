
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* int8_t ;
typedef int int64_t ;
typedef char* int32_t ;
typedef char* int16_t ;
struct TYPE_6__ {scalar_t__ numOfRows; int timestamp; int table; int values; } ;
struct TYPE_5__ {int type; int bytes; } ;
typedef int ** TAOS_ROW ;
typedef int TAOS_RES ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int JsonBuf ;
typedef TYPE_2__ HttpSqlCmd ;
typedef int HttpContext ;


 int HTTP_GC_TARGET_SIZE ;
 int JsonArrEnd ;
 int JsonArrStt ;
 int TSDB_TIME_PRECISION_MILLI ;
 int gcWriteTargetEndJson (int *) ;
 int gcWriteTargetStartJson (int *,char*,char*) ;
 char* httpGetCmdsString (int *,int ) ;
 int httpJsonDouble (int *,double) ;
 int httpJsonFloat (int *,float) ;
 int httpJsonInt (int *,char*) ;
 int httpJsonInt64 (int *,int) ;
 int httpJsonItemToken (int *) ;
 int httpJsonOriginString (int *,char*,int) ;
 int httpJsonString (int *,char*,int) ;
 int httpJsonStringForTransMean (int *,int *,int ) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int ** taos_fetch_row (int *) ;
 int taos_num_fields (int *) ;
 int taos_result_precision (int *) ;

bool gcBuildQueryJson(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result, int numOfRows) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return 0;

  int num_fields = taos_num_fields(result);
  TAOS_FIELD *fields = taos_fetch_fields(result);
  if (num_fields == 0) {
    return 0;
  }

  int precision = taos_result_precision(result);






  int dataFields = -1;
  int groupFields = -1;
  bool hasTimestamp = fields[0].type == 129;
  if (hasTimestamp) {
    dataFields = 1;
    if (num_fields > 2) groupFields = num_fields - 1;
  } else {
    dataFields = 0;
    if (num_fields > 1) groupFields = num_fields - 1;
  }

  char *refIdBuffer = httpGetCmdsString(pContext, cmd->values);
  char *aliasBuffer = httpGetCmdsString(pContext, cmd->table);
  char *targetBuffer = httpGetCmdsString(pContext, cmd->timestamp);

  if (groupFields == -1 && cmd->numOfRows == 0) {
    gcWriteTargetStartJson(jsonBuf, refIdBuffer, aliasBuffer);
    cmd->numOfRows += numOfRows;
  }

  for (int i = 0; i < numOfRows; ++i) {
    TAOS_ROW row = taos_fetch_row(result);


    if (groupFields != -1) {
      char target[HTTP_GC_TARGET_SIZE];

      switch (fields[groupFields].type) {
        case 135:
        case 128:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int8_t *)row[groupFields]));
          break;
        case 130:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int16_t *)row[groupFields]));
          break;
        case 132:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%d", aliasBuffer, *((int32_t *)row[groupFields]));
          break;
        case 137:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *)row[groupFields]));
          break;
        case 133:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%.5f", aliasBuffer, *((float *)row[groupFields]));
          break;
        case 134:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%.9f", aliasBuffer, *((double *)row[groupFields]));
          break;
        case 136:
        case 131:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%s", aliasBuffer, (char *)row[groupFields]);
          break;
        case 129:
          if (precision == TSDB_TIME_PRECISION_MILLI) {
            snprintf(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *) row[groupFields]));
          } else {
            snprintf(target, HTTP_GC_TARGET_SIZE, "%s%ld", aliasBuffer, *((int64_t *) row[groupFields]) / 1000);
          }
          break;
        default:
          snprintf(target, HTTP_GC_TARGET_SIZE, "%s%s", aliasBuffer, "invalidcol");
          break;
      }

      if (strcmp(target, targetBuffer) != 0) {

        if (strlen(targetBuffer) != 0) {
          gcWriteTargetEndJson(jsonBuf);
        }


        gcWriteTargetStartJson(jsonBuf, refIdBuffer, target);
        strncpy(targetBuffer, target, HTTP_GC_TARGET_SIZE);
      }
    }


    httpJsonItemToken(jsonBuf);
    httpJsonToken(jsonBuf, JsonArrStt);

    for (int i = dataFields; i >= 0; i--) {
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
          if (precision == TSDB_TIME_PRECISION_MILLI) {
            httpJsonInt64(jsonBuf, *((int64_t *)row[i]));
          } else {
            httpJsonInt64(jsonBuf, *((int64_t *)row[i]) / 1000);
          }
          break;
        default:
          httpJsonString(jsonBuf, "invalidcol", 10);
          break;
      }
    }

    if (dataFields == 0) {
      httpJsonItemToken(jsonBuf);
      httpJsonString(jsonBuf, "-", 1);
    }


    httpJsonToken(jsonBuf, JsonArrEnd);
  }

  return 1;
}
