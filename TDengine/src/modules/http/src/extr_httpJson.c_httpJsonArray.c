
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* httpJsonBuilder ) (int *,void*) ;
typedef int JsonBuf ;


 int JsonArrEnd ;
 int JsonArrStt ;
 int httpJsonItemToken (int *) ;
 int httpJsonToken (int *,int ) ;
 int stub1 (int *,void*) ;

void httpJsonArray(JsonBuf* buf, httpJsonBuilder fnBuilder, void* jsonHandle) {
  httpJsonItemToken(buf);
  httpJsonToken(buf, JsonArrStt);
  (*fnBuilder)(buf, jsonHandle);
  httpJsonToken(buf, JsonArrEnd);
}
