
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int JsonBuf ;


 int httpJsonInt64 (int *,int ) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairInt64Val(JsonBuf* buf, char* name, int nNameLen, int64_t num) {
  httpJsonPairHead(buf, name, nNameLen);
  httpJsonInt64(buf, num);
}
