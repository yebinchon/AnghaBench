
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int JsonStrEnd ;
 int JsonStrStt ;
 int httpJsonItemToken (int *) ;
 int httpJsonPrint (int *,char*,int) ;
 int httpJsonToken (int *,int ) ;

void httpJsonString(JsonBuf* buf, char* sVal, int len) {
  httpJsonItemToken(buf);
  httpJsonToken(buf, JsonStrStt);
  httpJsonPrint(buf, sVal, len);
  httpJsonToken(buf, JsonStrEnd);
}
