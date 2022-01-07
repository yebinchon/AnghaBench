
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int url; } ;
typedef TYPE_1__ ConnInfo ;


 int MSG_OUT (char*,int ,double,double) ;

__attribute__((used)) static int prog_cb(void *p, double dltotal, double dlnow, double ult,
                   double uln)
{
  ConnInfo *conn = (ConnInfo *)p;
  MSG_OUT("Progress: %s (%g/%g)\n", conn->url, dlnow, dltotal);
  return 0;
}
