
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfRows; } ;
typedef int JsonBuf ;
typedef TYPE_1__ HttpSqlCmd ;
typedef int HttpContext ;


 int JsonArrEnd ;
 int JsonObjEnd ;
 int REST_JSON_ROWS ;
 int REST_JSON_ROWS_LEN ;
 int httpJsonInt64 (int *,int ) ;
 int httpJsonItemToken (int *) ;
 int httpJsonPairHead (int *,int ,int ) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 int httpWriteJsonBufEnd (int *) ;

void restStopSqlJson(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonToken(jsonBuf, JsonArrEnd);


  httpJsonItemToken(jsonBuf);
  httpJsonPairHead(jsonBuf, REST_JSON_ROWS, REST_JSON_ROWS_LEN);
  httpJsonInt64(jsonBuf, cmd->numOfRows);


  httpJsonToken(jsonBuf, JsonObjEnd);

  httpWriteJsonBufEnd(jsonBuf);
}
