
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonOriginString (int *,char*,int) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairOriginString(JsonBuf* buf, char* name, int nameLen, char* sVal, int valLen) {
  httpJsonPairHead(buf, name, nameLen);
  httpJsonOriginString(buf, sVal, valLen);
}
