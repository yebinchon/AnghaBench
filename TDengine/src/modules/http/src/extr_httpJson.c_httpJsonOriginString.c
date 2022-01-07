
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonItemToken (int *) ;
 int httpJsonPrint (int *,char*,int) ;

void httpJsonOriginString(JsonBuf* buf, char* sVal, int len) {
  httpJsonItemToken(buf);
  httpJsonPrint(buf, sVal, len);
}
