
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {long long tv_sec; int tv_usec; } ;
struct TYPE_10__ {long long tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
typedef int int64_t ;
struct TYPE_13__ {int user_usec; int sys_usec; int member_0; } ;
struct TYPE_12__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef int HANDLE ;
typedef TYPE_3__ FILETIME ;
typedef TYPE_4__ BenchmarkTimeStamps ;


 int GetCurrentProcess () ;
 int GetProcessTimes (int ,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 int RUSAGE_SELF ;
 int av_gettime_relative () ;
 int getrusage (int ,struct rusage*) ;

__attribute__((used)) static BenchmarkTimeStamps get_benchmark_time_stamps(void)
{
    BenchmarkTimeStamps time_stamps = { av_gettime_relative() };
    time_stamps.user_usec = time_stamps.sys_usec = 0;

    return time_stamps;
}
