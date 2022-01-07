
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_3__ {int timer_event; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLM ;


 int MSG_OUT ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int fprintf (int ,char*,long) ;

__attribute__((used)) static int multi_timer_cb(CURLM *multi, long timeout_ms, GlobalInfo *g)
{
  struct timeval timeout;
  (void)multi;

  timeout.tv_sec = timeout_ms/1000;
  timeout.tv_usec = (timeout_ms%1000)*1000;
  fprintf(MSG_OUT, "multi_timer_cb: Setting timeout to %ld ms\n", timeout_ms);







  if(timeout_ms == -1)
    evtimer_del(&g->timer_event);
  else
    evtimer_add(&g->timer_event, &timeout);
  return 0;
}
