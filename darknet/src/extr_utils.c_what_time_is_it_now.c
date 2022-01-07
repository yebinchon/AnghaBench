
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;

double what_time_is_it_now()
{
    struct timeval time;
    if (gettimeofday(&time,((void*)0))){
        return 0;
    }
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
}
