
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct itimerval {TYPE_2__ it_interval; TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int setitimer (int ,struct itimerval*,int *) ;

void watchdogScheduleSignal(int period) {
    struct itimerval it;


    it.it_value.tv_sec = period/1000;
    it.it_value.tv_usec = (period%1000)*1000;

    it.it_interval.tv_sec = 0;
    it.it_interval.tv_usec = 0;
    setitimer(ITIMER_REAL, &it, ((void*)0));
}
