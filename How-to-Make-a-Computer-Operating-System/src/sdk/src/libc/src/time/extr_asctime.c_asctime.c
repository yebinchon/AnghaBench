
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm_t ;


 int asctime_buffer ;
 char* asctime_r (int const*,int ) ;

char* asctime( const tm_t* tm ) {
    return asctime_r( tm, asctime_buffer );
}
