
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOCH ;
 scalar_t__* monthdays ;
 scalar_t__* monthdays2 ;

int daysdiff( int year, int month, int day ) {
    int i, days = 0;

    for ( i = EPOCH; i < year; i++ ) {
        if ( i % 4 == 0 ) {
            days += 366;
        } else {
            days += 365;
        }
    }

    if ( year % 4 == 0 ) {
        days += monthdays2[ month ];
    } else {
        days += monthdays[ month ];
    }

    days += day - 1;

    return days;
}
