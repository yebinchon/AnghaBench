
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; } ;
typedef int JsonBuf ;
typedef TYPE_1__ HttpSqlCmd ;
typedef int HttpContext ;


 int JsonObjEnd ;
 int httpJsonItemToken (int *) ;
 int httpJsonPairStatus (int *,int ) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;

void tgStopQueryJson(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonItemToken(jsonBuf);
  httpJsonPairStatus(jsonBuf, cmd->code);


  httpJsonToken(jsonBuf, JsonObjEnd);
}
