
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int JsonArrEnd ;
 int JsonObjEnd ;
 int httpJsonToken (int *,int ) ;

void gcWriteTargetEndJson(JsonBuf *jsonBuf) {

  httpJsonToken(jsonBuf, JsonArrEnd);


  httpJsonToken(jsonBuf, JsonObjEnd);
}
