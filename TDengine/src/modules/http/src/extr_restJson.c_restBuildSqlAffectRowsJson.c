
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
 int JsonArrStt ;
 int httpJsonInt (int *,int) ;
 int httpJsonItemToken (int *) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;

void restBuildSqlAffectRowsJson(HttpContext *pContext, HttpSqlCmd *cmd, int affect_rows) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonArrStt);

  httpJsonItemToken(jsonBuf);
  httpJsonInt(jsonBuf, affect_rows);


  httpJsonToken(jsonBuf, JsonArrEnd);

  cmd->numOfRows = affect_rows;
}
