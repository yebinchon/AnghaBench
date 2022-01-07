
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_year; int tm_hour; int tm_min; int tm_sec; int tm_mday; int tm_mon; } ;
typedef TYPE_1__ tm_t ;
typedef int time_t ;


 int SECONDS_PER_DAY ;
 int SECONDS_PER_HOUR ;
 int SECONDS_PER_MINUTE ;
 int daysdiff (int,int ,int ) ;

time_t mktime( tm_t* tm ) {
    if ( tm->tm_year > 2100 ) {
        return -1;
    }

    return daysdiff( tm->tm_year, tm->tm_mon, tm->tm_mday ) * SECONDS_PER_DAY +
           tm->tm_hour * SECONDS_PER_HOUR + tm->tm_min * SECONDS_PER_MINUTE + tm->tm_sec;
}
