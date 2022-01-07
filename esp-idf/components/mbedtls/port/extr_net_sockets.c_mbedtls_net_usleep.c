
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;


 int select (int ,int *,int *,int *,struct timeval*) ;

void mbedtls_net_usleep( unsigned long usec )
{
    struct timeval tv;
    tv.tv_sec = usec / 1000000;
    tv.tv_usec = usec % 1000000;
    select( 0, ((void*)0), ((void*)0), ((void*)0), &tv );
}
