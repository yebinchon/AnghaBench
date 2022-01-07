
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonDouble (int *,double) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairDoubleVal(JsonBuf* buf, char* name, int nNameLen, double num) {
  httpJsonPairHead(buf, name, nNameLen);
  httpJsonDouble(buf, num);
}
