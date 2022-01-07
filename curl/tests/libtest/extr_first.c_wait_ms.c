
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int select_wrapper (int ,int *,int *,int *,struct timeval*) ;

void wait_ms(int ms)
{
  struct timeval t;
  t.tv_sec = ms/1000;
  ms -= (int)t.tv_sec * 1000;
  t.tv_usec = ms * 1000;
  select_wrapper(0, ((void*)0), ((void*)0), ((void*)0), &t);
}
