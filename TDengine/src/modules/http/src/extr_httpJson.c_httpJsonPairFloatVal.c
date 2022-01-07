
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonFloat (int *,float) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairFloatVal(JsonBuf* buf, char* name, int nNameLen, float num) {
  httpJsonPairHead(buf, name, nNameLen);
  httpJsonFloat(buf, num);
}
