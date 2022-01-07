
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 int QueryPerformanceFrequency (TYPE_1__*) ;
 int gettimeofday (struct timeval*,int *) ;

uint64_t hb_get_time_us()
{
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return ((uint64_t)tv.tv_sec * 1000000 + (uint64_t)tv.tv_usec);

}
