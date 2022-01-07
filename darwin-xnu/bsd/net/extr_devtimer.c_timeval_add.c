
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ DEVTIMER_USECS_PER_SEC ;

__attribute__((used)) static __inline__ void
timeval_add(struct timeval tv1, struct timeval tv2,
     struct timeval * result)
{
    result->tv_sec = tv1.tv_sec + tv2.tv_sec;
    result->tv_usec = tv1.tv_usec + tv2.tv_usec;
    if (result->tv_usec > DEVTIMER_USECS_PER_SEC) {
 result->tv_usec -= DEVTIMER_USECS_PER_SEC;
 result->tv_sec++;
    }
    return;
}
