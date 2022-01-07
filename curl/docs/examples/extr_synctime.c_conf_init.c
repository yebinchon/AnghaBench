
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* timeserver; scalar_t__* proxy_user; scalar_t__* http_proxy; } ;
typedef TYPE_1__ conf_t ;


 int MAX_STRING1 ;

int conf_init(conf_t *conf)
{
  int i;

  *conf->http_proxy = 0;
  for(i = 0; i<MAX_STRING1; i++)
    conf->proxy_user[i] = 0;
  *conf->timeserver = 0;
  return 1;
}
