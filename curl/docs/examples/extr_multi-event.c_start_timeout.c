
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int CURLM ;


 int evtimer_add (int ,struct timeval*) ;
 int evtimer_del (int ) ;
 int timeout ;

__attribute__((used)) static int start_timeout(CURLM *multi, long timeout_ms, void *userp)
{
  if(timeout_ms < 0) {
    evtimer_del(timeout);
  }
  else {
    if(timeout_ms == 0)
      timeout_ms = 1;

    struct timeval tv;
    tv.tv_sec = timeout_ms / 1000;
    tv.tv_usec = (timeout_ms % 1000) * 1000;
    evtimer_del(timeout);
    evtimer_add(timeout, &tv);
  }
  return 0;
}
