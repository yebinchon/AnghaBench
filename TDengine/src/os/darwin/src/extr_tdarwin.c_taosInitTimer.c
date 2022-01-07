
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_interval; TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int setitimer (int ,struct itimerval*,int *) ;
 int signal (int ,void (*) (int)) ;

int taosInitTimer(void (*callback)(int), int ms) {
  signal(SIGALRM, callback);

  struct itimerval tv;
  tv.it_interval.tv_sec = 0;
  tv.it_interval.tv_usec = 1000 * ms;
  tv.it_value = tv.it_interval;

  return setitimer(ITIMER_REAL, &tv, ((void*)0));
}
