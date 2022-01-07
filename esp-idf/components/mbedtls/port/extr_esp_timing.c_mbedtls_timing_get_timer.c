
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long tv_sec; int tv_usec; } ;
struct mbedtls_timing_hr_time {int dummy; } ;
struct _hr_time {struct timeval start; } ;


 int gettimeofday (struct timeval*,int *) ;

unsigned long mbedtls_timing_get_timer( struct mbedtls_timing_hr_time *val, int reset )
{
    struct _hr_time *t = (struct _hr_time *) val;

    if( reset )
    {
        gettimeofday( &t->start, ((void*)0) );
        return( 0 );
    }
    else
    {
        unsigned long delta;
        struct timeval now;
        gettimeofday( &now, ((void*)0) );
        delta = ( now.tv_sec - t->start.tv_sec ) * 1000ul
              + ( now.tv_usec - t->start.tv_usec ) / 1000;
        return( delta );
    }
}
