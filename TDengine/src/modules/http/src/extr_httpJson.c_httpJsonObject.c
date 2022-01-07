
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* httpJsonBuilder ) (int *,void*) ;
typedef int JsonBuf ;


 int JsonObjEnd ;
 int JsonObjStt ;
 int httpJsonItemToken (int *) ;
 int httpJsonToken (int *,int ) ;
 int stub1 (int *,void*) ;

void httpJsonObject(JsonBuf* buf, httpJsonBuilder fnBuilder, void* dsHandle) {
  httpJsonItemToken(buf);
  httpJsonToken(buf, JsonObjStt);
  (*fnBuilder)(buf, dsHandle);
  httpJsonToken(buf, JsonObjEnd);
}
