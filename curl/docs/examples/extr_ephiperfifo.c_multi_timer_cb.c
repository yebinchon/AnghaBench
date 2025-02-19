
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {long tv_sec; long tv_nsec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct itimerspec {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_7__ {int tfd; } ;
typedef TYPE_3__ GlobalInfo ;
typedef int CURLM ;


 int MSG_OUT ;
 int fprintf (int ,char*,long) ;
 int memset (struct itimerspec*,int ,int) ;
 int timerfd_settime (int ,int ,struct itimerspec*,int *) ;

__attribute__((used)) static int multi_timer_cb(CURLM *multi, long timeout_ms, GlobalInfo *g)
{
  struct itimerspec its;

  fprintf(MSG_OUT, "multi_timer_cb: Setting timeout to %ld ms\n", timeout_ms);

  if(timeout_ms > 0) {
    its.it_interval.tv_sec = 1;
    its.it_interval.tv_nsec = 0;
    its.it_value.tv_sec = timeout_ms / 1000;
    its.it_value.tv_nsec = (timeout_ms % 1000) * 1000 * 1000;
  }
  else if(timeout_ms == 0) {



    its.it_interval.tv_sec = 1;
    its.it_interval.tv_nsec = 0;
    its.it_value.tv_sec = 0;
    its.it_value.tv_nsec = 1;
  }
  else {
    memset(&its, 0, sizeof(struct itimerspec));
  }

  timerfd_settime(g->tfd, 0, &its, ((void*)0));
  return 0;
}
