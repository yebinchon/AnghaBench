
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;
typedef int HttpSqlCmd ;
typedef int HttpContext ;


 int gcWriteTargetEndJson (int *) ;
 int * httpMallocJsonBuf (int *) ;

void gcStopQueryJson(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  gcWriteTargetEndJson(jsonBuf);
}
