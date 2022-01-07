
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int dwLength; scalar_t__ dwAvailPhys; } ;
struct TYPE_5__ {int dwLength; scalar_t__ ullAvailPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;
typedef TYPE_2__ MEMORYSTATUS ;


 int GlobalMemoryStatus (TYPE_2__*) ;
 int GlobalMemoryStatusEx (TYPE_1__*) ;
 scalar_t__ frontend_win32_get_mem_total () ;

__attribute__((used)) static uint64_t frontend_win32_get_mem_used(void)
{
   MEMORYSTATUS mem_info;
   mem_info.dwLength = sizeof(MEMORYSTATUS);
   GlobalMemoryStatus(&mem_info);
   return ((frontend_win32_get_mem_total() - mem_info.dwAvailPhys));

}
