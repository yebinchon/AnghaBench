
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int JsonBuf ;
typedef int HttpSqlCmd ;
typedef int HttpContext ;


 int JsonArrEnd ;
 int JsonArrStt ;
 int JsonObjStt ;
 int REST_JSON_AFFECT_ROWS ;
 int REST_JSON_AFFECT_ROWS_LEN ;
 int REST_JSON_DATA ;
 int REST_JSON_DATA_LEN ;
 int REST_JSON_HEAD ;
 int REST_JSON_HEAD_LEN ;
 int REST_JSON_STATUS ;
 int REST_JSON_STATUS_LEN ;
 int REST_JSON_SUCCESS ;
 int REST_JSON_SUCCESS_LEN ;
 int httpInitJsonBuf (int *,int *) ;
 int httpJsonItemToken (int *) ;
 int httpJsonPair (int *,int ,int ,int ,int ) ;
 int httpJsonPairHead (int *,int ,int ) ;
 int httpJsonString (int *,int ,int) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 int httpWriteJsonBufHead (int *) ;
 scalar_t__ strlen (int ) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int taos_num_fields (int *) ;

void restStartSqlJson(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;

  TAOS_FIELD *fields = taos_fetch_fields(result);
  int num_fields = taos_num_fields(result);

  httpInitJsonBuf(jsonBuf, pContext);
  httpWriteJsonBufHead(jsonBuf);


  httpJsonToken(jsonBuf, JsonObjStt);


  httpJsonItemToken(jsonBuf);
  httpJsonPair(jsonBuf, REST_JSON_STATUS, REST_JSON_STATUS_LEN, REST_JSON_SUCCESS, REST_JSON_SUCCESS_LEN);


  httpJsonItemToken(jsonBuf);
  httpJsonPairHead(jsonBuf, REST_JSON_HEAD, REST_JSON_HEAD_LEN);

  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonArrStt);

  if (num_fields == 0) {
    httpJsonItemToken(jsonBuf);
    httpJsonString(jsonBuf, REST_JSON_AFFECT_ROWS, REST_JSON_AFFECT_ROWS_LEN);
  } else {
    for (int i = 0; i < num_fields; ++i) {
      httpJsonItemToken(jsonBuf);
      httpJsonString(jsonBuf, fields[i].name, (int)strlen(fields[i].name));
    }
  }


  httpJsonToken(jsonBuf, JsonArrEnd);


  httpJsonItemToken(jsonBuf);
  httpJsonPairHead(jsonBuf, REST_JSON_DATA, REST_JSON_DATA_LEN);

  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonArrStt);
}
