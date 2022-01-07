
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

void hb_clock_gettime( struct timespec *tp )
{
    struct timeval tv;

    gettimeofday( &tv, ((void*)0) );
    tp->tv_sec = tv.tv_sec;
    tp->tv_nsec = tv.tv_usec * 1000;
}
