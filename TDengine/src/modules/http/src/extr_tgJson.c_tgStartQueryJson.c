
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; int table; int stable; int metric; } ;
typedef int TAOS_RES ;
typedef int JsonBuf ;
typedef TYPE_1__ HttpSqlCmd ;
typedef int HttpContext ;


 int JsonObjStt ;
 int httpGetCmdsString (int *,int ) ;
 int httpJsonItemToken (int *) ;
 int httpJsonPair (int *,char*,int,int ,int) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 scalar_t__ strlen (int ) ;

void tgStartQueryJson(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonObjStt);


  httpJsonItemToken(jsonBuf);
  httpJsonPair(jsonBuf, "metric", 6, httpGetCmdsString(pContext, cmd->stable),
               (int)strlen(httpGetCmdsString(pContext, cmd->metric)));

  httpJsonItemToken(jsonBuf);
  httpJsonPair(jsonBuf, "stable", 6, httpGetCmdsString(pContext, cmd->stable),
               (int)strlen(httpGetCmdsString(pContext, cmd->stable)));

  httpJsonItemToken(jsonBuf);
  httpJsonPair(jsonBuf, "table", 5, httpGetCmdsString(pContext, cmd->table),
               (int)strlen(httpGetCmdsString(pContext, cmd->table)));

  httpJsonItemToken(jsonBuf);
  httpJsonPair(jsonBuf, "timestamp", 9, httpGetCmdsString(pContext, cmd->timestamp),
               (int)strlen(httpGetCmdsString(pContext, cmd->timestamp)));
}
