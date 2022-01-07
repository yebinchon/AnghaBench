
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonNull (int *) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairNullVal(JsonBuf* buf, char* name, int nNameLen) {
  httpJsonPairHead(buf, name, nNameLen);
  httpJsonNull(buf);
}
