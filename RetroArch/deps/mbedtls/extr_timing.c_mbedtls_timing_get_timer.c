
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct mbedtls_timing_hr_time {int dummy; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct _hr_time {TYPE_1__ start; } ;


 int gettimeofday (struct timeval*,int *) ;

unsigned long mbedtls_timing_get_timer( struct mbedtls_timing_hr_time *val, int reset )
{
    unsigned long delta;
    struct timeval offset;
    struct _hr_time *t = (struct _hr_time *) val;

    gettimeofday( &offset, ((void*)0) );

    if( reset )
    {
        t->start.tv_sec = offset.tv_sec;
        t->start.tv_usec = offset.tv_usec;
        return( 0 );
    }

    delta = ( offset.tv_sec - t->start.tv_sec ) * 1000
          + ( offset.tv_usec - t->start.tv_usec ) / 1000;

    return( delta );
}
