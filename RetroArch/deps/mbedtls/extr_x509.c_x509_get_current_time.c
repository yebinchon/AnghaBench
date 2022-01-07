
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_3__ {int sec; int min; int hour; int day; scalar_t__ mon; scalar_t__ year; } ;
typedef TYPE_1__ mbedtls_x509_time ;
typedef int mbedtls_time_t ;


 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 struct tm* gmtime (int *) ;
 scalar_t__ mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 int mbedtls_threading_gmtime_mutex ;
 int mbedtls_time (int *) ;

__attribute__((used)) static int x509_get_current_time( mbedtls_x509_time *now )
{
    struct tm *lt;
    mbedtls_time_t tt;
    int ret = 0;






    tt = mbedtls_time( ((void*)0) );
    lt = gmtime( &tt );

    if( lt == ((void*)0) )
        ret = -1;
    else
    {
        now->year = lt->tm_year + 1900;
        now->mon = lt->tm_mon + 1;
        now->day = lt->tm_mday;
        now->hour = lt->tm_hour;
        now->min = lt->tm_min;
        now->sec = lt->tm_sec;
    }






    return( ret );
}
