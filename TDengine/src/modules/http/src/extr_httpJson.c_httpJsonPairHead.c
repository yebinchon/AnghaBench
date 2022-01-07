
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int JsonPairTkn ;
 int httpJsonItemToken (int *) ;
 int httpJsonString (int *,char*,int) ;
 int httpJsonToken (int *,int ) ;

void httpJsonPairHead(JsonBuf* buf, char* name, int len) {
  httpJsonItemToken(buf);
  httpJsonString(buf, name, len);
  httpJsonToken(buf, JsonPairTkn);
}
