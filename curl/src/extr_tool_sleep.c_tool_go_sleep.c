
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;


 int Sleep (long) ;
 int delay (long) ;
 int poll (void*,int ,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

void tool_go_sleep(long ms)
{







  struct timeval timeout;
  timeout.tv_sec = ms / 1000L;
  ms = ms % 1000L;
  timeout.tv_usec = (int)ms * 1000;
  select(0, ((void*)0), ((void*)0), ((void*)0), &timeout);

}
