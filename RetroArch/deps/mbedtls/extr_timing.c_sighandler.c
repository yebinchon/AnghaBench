
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbedtls_timing_alarmed ;
 int signal (int,void (*) (int)) ;

__attribute__((used)) static void sighandler( int signum )
{
    mbedtls_timing_alarmed = 1;
    signal( signum, sighandler );
}
