
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long long tv_sec; scalar_t__ tv_usec; } ;
typedef scalar_t__ int64_t ;


 int gettimeofday (struct timeval*,int *) ;

int64_t get_time_microsec(void)
{
    struct timeval now;
    gettimeofday(&now, ((void*)0));
    return now.tv_sec * 1000000LL + now.tv_usec;
}
