#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int dwLength; int /*<<< orphan*/  dwTotalPhys; } ;
struct TYPE_5__ {int dwLength; int /*<<< orphan*/  ullTotalPhys; } ;
typedef  TYPE_1__ MEMORYSTATUSEX ;
typedef  TYPE_2__ MEMORYSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static uint64_t FUNC2(void)
{
   /* OSes below 2000 don't have the Ex version,
    * and non-Ex cannot work with >4GB RAM */
#if _WIN32_WINNT >= 0x0500
   MEMORYSTATUSEX mem_info;
   mem_info.dwLength = sizeof(MEMORYSTATUSEX);
   GlobalMemoryStatusEx(&mem_info);
   return mem_info.ullTotalPhys;
#else
   MEMORYSTATUS mem_info;
   mem_info.dwLength = sizeof(MEMORYSTATUS);
   FUNC0(&mem_info);
   return mem_info.dwTotalPhys;
#endif
}