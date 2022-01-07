
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_3__ {int timer_event; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLM ;


 int MSG_OUT (char*,long,long,long) ;
 int g_timeout_add (long,int ,TYPE_1__*) ;
 int timer_cb ;

__attribute__((used)) static int update_timeout_cb(CURLM *multi, long timeout_ms, void *userp)
{
  struct timeval timeout;
  GlobalInfo *g = (GlobalInfo *)userp;
  timeout.tv_sec = timeout_ms/1000;
  timeout.tv_usec = (timeout_ms%1000)*1000;

  MSG_OUT("*** update_timeout_cb %ld => %ld:%ld ***\n",
          timeout_ms, timeout.tv_sec, timeout.tv_usec);







  if(timeout_ms >= 0)
    g->timer_event = g_timeout_add(timeout_ms, timer_cb, g);
  return 0;
}
