
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* lst; char* buf; } ;
typedef TYPE_1__ JsonBuf ;


 char JsonArrStt ;
 char JsonItmTkn ;
 char JsonObjStt ;
 char JsonPairTkn ;
 int httpJsonToken (TYPE_1__*,char) ;

void httpJsonItemToken(JsonBuf* buf) {
  char c = *(buf->lst - 1);
  if (c == JsonArrStt || c == JsonObjStt || c == JsonPairTkn || c == JsonItmTkn) {
    return;
  }
  if (buf->lst > buf->buf) httpJsonToken(buf, JsonItmTkn);
}
