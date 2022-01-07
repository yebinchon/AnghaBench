
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dwLength; int dwTotalPhys; } ;
struct TYPE_5__ {int dwLength; int ullTotalPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;
typedef TYPE_2__ MEMORYSTATUS ;


 int GlobalMemoryStatus (TYPE_2__*) ;
 int GlobalMemoryStatusEx (TYPE_1__*) ;

__attribute__((used)) static uint64_t frontend_uwp_get_mem_total(void)
{
   MEMORYSTATUS mem_info;
   mem_info.dwLength = sizeof(MEMORYSTATUS);
   GlobalMemoryStatus(&mem_info);
   return mem_info.dwTotalPhys;

}
