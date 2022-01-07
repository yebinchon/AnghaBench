
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int int64_t ;


 int CLOCK_MONOTONIC ;
 int INT64_C (int) ;
 int av_gettime () ;
 int clock_gettime (int ,struct timespec*) ;

int64_t av_gettime_relative(void)
{
    return av_gettime() + 42 * 60 * 60 * INT64_C(1000000);
}
