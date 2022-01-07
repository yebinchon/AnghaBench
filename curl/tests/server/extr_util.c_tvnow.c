
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; scalar_t__ tv_usec; } ;


 scalar_t__ time (int *) ;

__attribute__((used)) static struct timeval tvnow(void)
{



  struct timeval now;
  now.tv_sec = (long)time(((void*)0));
  now.tv_usec = 0;
  return now;
}
