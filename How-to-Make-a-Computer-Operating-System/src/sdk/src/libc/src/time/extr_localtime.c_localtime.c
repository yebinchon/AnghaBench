
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm_t ;
typedef int time_t ;


 int gmtime_r (int const*,int *) ;
 int ret ;

tm_t* localtime( const time_t* timep ) {
    gmtime_r( timep, &ret );

    return &ret;
}
