
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm_t ;


 int strftime (char*,int,char*,int const*) ;

char* asctime_r( const tm_t* tm, char* buf ) {
    strftime( buf, 26, "%a %b %d %H:%M:%S %Y\n", tm );

    return buf;
}
