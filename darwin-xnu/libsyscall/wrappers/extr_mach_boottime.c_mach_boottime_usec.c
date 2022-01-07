
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ _COMM_PAGE_BOOTTIME_USEC ;

uint64_t
mach_boottime_usec(void)
{
 return *(uint64_t*)_COMM_PAGE_BOOTTIME_USEC;
}
