
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;
typedef int HttpSqlCmd ;
typedef int HttpContext ;


 int httpJsonPairIntVal (int *,char*,int,int) ;
 int * httpMallocJsonBuf (int *) ;

void tgBuildSqlAffectRowsJson(HttpContext *pContext, HttpSqlCmd *cmd, int affect_rows) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonPairIntVal(jsonBuf, "affected_rows", 13, affect_rows);
}
