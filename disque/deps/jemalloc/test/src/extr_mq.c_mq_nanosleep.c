
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; unsigned int tv_nsec; } ;


 int Sleep (unsigned int) ;
 int assert (int) ;
 int nanosleep (struct timespec*,int *) ;

void
mq_nanosleep(unsigned ns)
{

 assert(ns <= 1000*1000*1000);




 {
  struct timespec timeout;

  if (ns < 1000*1000*1000) {
   timeout.tv_sec = 0;
   timeout.tv_nsec = ns;
  } else {
   timeout.tv_sec = 1;
   timeout.tv_nsec = 0;
  }
  nanosleep(&timeout, ((void*)0));
 }

}
