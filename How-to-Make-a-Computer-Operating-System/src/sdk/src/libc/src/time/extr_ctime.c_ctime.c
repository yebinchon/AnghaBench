
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* asctime (int ) ;
 int localtime (int const*) ;

char* ctime( const time_t* timep ) {
    return asctime( localtime( timep ) );
}
