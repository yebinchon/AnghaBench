
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulonglong ;
struct TYPE_5__ {scalar_t__ tb_low; scalar_t__ tb_high; } ;
typedef TYPE_1__ timebasestruct_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int denom; int numer; int member_1; int member_0; } ;
typedef TYPE_2__ mach_timebase_info_data_t ;
typedef scalar_t__ NXTime_t ;


 int CLOCK_REALTIME ;
 int NXGetTime (int ,int ,scalar_t__*) ;
 int NX_NSECONDS ;
 int NX_SINCE_1970 ;
 int TIMEBASE_SZ ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ gethrtime () ;
 int mach_absolute_time () ;
 int mach_timebase_info (TYPE_2__*) ;
 int read_real_time (TYPE_1__*,int ) ;

ulonglong my_timer_nanoseconds(void)
{
  return 0;

}
