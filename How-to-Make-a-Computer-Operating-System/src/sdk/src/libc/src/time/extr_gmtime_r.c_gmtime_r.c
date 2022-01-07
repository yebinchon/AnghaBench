
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm_t ;
typedef int time_t ;


 scalar_t__ _gmtime (int const,int *) ;

tm_t* gmtime_r( const time_t* timep, tm_t* result ) {
    if ( _gmtime( *timep, result ) < 0 ) {
        return ((void*)0);
    }

    return result;
}
