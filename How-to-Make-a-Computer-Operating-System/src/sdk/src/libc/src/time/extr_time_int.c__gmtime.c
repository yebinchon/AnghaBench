
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_year; int tm_yday; int tm_mon; int tm_mday; int tm_isdst; } ;
typedef TYPE_1__ tm_t ;
typedef int time_t ;


 void* EPOCH ;
 int HOURS_PER_DAY ;
 int MINUTES_PER_HOUR ;
 int SECONDS_PER_MINUTE ;
 int* monthdays ;
 int* monthdays2 ;
 int* sumofdays ;

int _gmtime( time_t timeval, tm_t* ret ) {
    int i;

    ret->tm_sec = timeval % SECONDS_PER_MINUTE;
    timeval /= SECONDS_PER_MINUTE;
    ret->tm_min = timeval % MINUTES_PER_HOUR;
    timeval /= MINUTES_PER_HOUR;
    ret->tm_hour = timeval % HOURS_PER_DAY;
    timeval /= HOURS_PER_DAY;






    ret->tm_wday = (4 + timeval) % 7;


    ret->tm_year = EPOCH;

    for ( i = 0; i < 60; i++ ) {
        if ( sumofdays[ i ] > timeval ) {
            ret->tm_year = EPOCH + i - 1;
            timeval -= sumofdays[ i - 1 ];

            break;
        }
    }

    ret->tm_yday = ( int )timeval;

    if ( ret->tm_year % 4 == 0 ) {
        for ( ret->tm_mon = 0; ret->tm_mon < 12; ret->tm_mon++ ) {
            if ( monthdays2[ ret->tm_mon ] > timeval ) {
                timeval -= monthdays2[ --ret->tm_mon ];
                break;
            }
        }
    } else {
        for ( ret->tm_mon = 0; ret->tm_mon < 12; ret->tm_mon++ ) {
            if ( monthdays[ ret->tm_mon ] > timeval ) {
                timeval -= monthdays[ --ret->tm_mon ];
                break;
            }
        }
    }

    ret->tm_mday = ( int )timeval + 1;
    ret->tm_isdst = -1;

    return 0;
}
