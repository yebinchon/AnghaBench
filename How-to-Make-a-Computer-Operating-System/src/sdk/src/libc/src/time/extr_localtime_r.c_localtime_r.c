
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm_t ;
typedef int time_t ;


 int gmtime_r (int const*,int *) ;

tm_t* localtime_r( const time_t* timep, tm_t* result ) {
    gmtime_r( timep, result );
    return result;
}
