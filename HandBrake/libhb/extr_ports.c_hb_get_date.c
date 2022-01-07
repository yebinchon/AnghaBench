
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

uint64_t hb_get_date()
{
    struct timeval tv;
    gettimeofday( &tv, ((void*)0) );
    return( (uint64_t) tv.tv_sec * 1000 + (uint64_t) tv.tv_usec / 1000 );
}
