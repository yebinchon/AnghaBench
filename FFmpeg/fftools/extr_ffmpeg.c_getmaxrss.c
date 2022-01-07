
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rusage {scalar_t__ ru_maxrss; } ;
typedef int memcounters ;
typedef int int64_t ;
struct TYPE_3__ {int cb; int PeakPagefileUsage; } ;
typedef TYPE_1__ PROCESS_MEMORY_COUNTERS ;
typedef int HANDLE ;


 int GetCurrentProcess () ;
 int GetProcessMemoryInfo (int ,TYPE_1__*,int) ;
 int RUSAGE_SELF ;
 int getrusage (int ,struct rusage*) ;

__attribute__((used)) static int64_t getmaxrss(void)
{
    return 0;

}
