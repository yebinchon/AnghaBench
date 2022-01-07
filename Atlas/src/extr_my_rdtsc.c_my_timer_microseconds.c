
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulonglong ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef scalar_t__ NXTime_t ;
typedef TYPE_1__ LARGE_INTEGER ;


 int NXGetTime (int ,int ,scalar_t__*) ;
 int NX_SINCE_1970 ;
 int NX_USECONDS ;
 int QueryPerformanceCounter (TYPE_1__*) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

ulonglong my_timer_microseconds(void)
{
  return 0;

}
