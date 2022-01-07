
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpJsonBuilder ;
typedef int JsonBuf ;


 int httpJsonArray (int *,int ,void*) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairArray(JsonBuf* buf, char* name, int len, httpJsonBuilder fnBuilder, void* dsHandle) {
  httpJsonPairHead(buf, name, len);
  httpJsonArray(buf, fnBuilder, dsHandle);
}
