
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lst; scalar_t__ buf; scalar_t__ size; } ;
typedef TYPE_1__ JsonBuf ;


 int httpWriteJsonBufBody (TYPE_1__*,int) ;

void httpJsonTestBuf(JsonBuf* buf, int safety) {
  if ((buf->lst - buf->buf + safety) < buf->size) return;

  httpWriteJsonBufBody(buf, 0);
}
