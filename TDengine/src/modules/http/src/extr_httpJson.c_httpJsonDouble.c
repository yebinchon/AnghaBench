
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lst; } ;
typedef TYPE_1__ JsonBuf ;


 int MAX_NUM_STR_SZ ;
 int httpJsonItemToken (TYPE_1__*) ;
 int httpJsonTestBuf (TYPE_1__*,int ) ;
 scalar_t__ snprintf (int ,int ,char*,double) ;

void httpJsonDouble(JsonBuf* buf, double num) {
  httpJsonItemToken(buf);
  httpJsonTestBuf(buf, MAX_NUM_STR_SZ);
  if (num > 1E10 || num < -1E10) {
    buf->lst += snprintf(buf->lst, MAX_NUM_STR_SZ, "%.9e", num);
  } else {
    buf->lst += snprintf(buf->lst, MAX_NUM_STR_SZ, "%.9f", num);
  }
}
