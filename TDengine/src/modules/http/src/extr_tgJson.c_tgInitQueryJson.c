
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;
typedef int HttpContext ;


 int JsonArrStt ;
 int JsonObjStt ;
 int httpInitJsonBuf (int *,int *) ;
 int httpJsonItemToken (int *) ;
 int httpJsonPairHead (int *,char*,int) ;
 int httpJsonToken (int *,int ) ;
 int * httpMallocJsonBuf (int *) ;
 int httpWriteJsonBufHead (int *) ;

void tgInitQueryJson(HttpContext *pContext) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;

  httpInitJsonBuf(jsonBuf, pContext);
  httpWriteJsonBufHead(jsonBuf);


  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonObjStt);

  httpJsonPairHead(jsonBuf, "metrics", 7);

  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonArrStt);
}
