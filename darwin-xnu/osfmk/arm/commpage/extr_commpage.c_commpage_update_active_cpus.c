
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ _COMM_PAGE_ACTIVE_CPUS ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 int commPagePtr ;
 int processor_avail_count ;

void
commpage_update_active_cpus(void)
{
        if (!commPagePtr)
                return;
 *((uint8_t *)(_COMM_PAGE_ACTIVE_CPUS+_COMM_PAGE_RW_OFFSET)) = processor_avail_count;
}
