
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int lst; } ;
typedef TYPE_1__ JsonBuf ;


 int JSON_BUFFER_SIZE ;
 int httpJsonTestBuf (TYPE_1__*,int) ;
 int httpWriteJsonBufBody (TYPE_1__*,int) ;
 int memcpy (int,char const*,size_t) ;

void httpJsonPrint(JsonBuf* buf, const char* json, int len) {
  if (len == 0 || len >= JSON_BUFFER_SIZE) {
    return;
  }

  if (len > buf->size) {
    httpWriteJsonBufBody(buf, 0);
    httpJsonPrint(buf, json, len);

    return;
  }
  httpJsonTestBuf(buf, len + 2);
  memcpy(buf->lst, json, (size_t)len);
  buf->lst += len;
}
