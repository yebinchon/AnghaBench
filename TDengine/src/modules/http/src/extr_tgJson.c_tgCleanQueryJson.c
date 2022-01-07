
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;
typedef int HttpContext ;


 int JsonArrEnd ;
 int JsonObjEnd ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 int httpWriteJsonBufEnd (int *) ;

void tgCleanQueryJson(HttpContext *pContext) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;


  httpJsonToken(jsonBuf, JsonArrEnd);
  httpJsonToken(jsonBuf, JsonObjEnd);

  httpWriteJsonBufEnd(jsonBuf);
}
