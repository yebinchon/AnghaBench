
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ _COMM_PAGE_TIMEBASE_OFFSET ;
 scalar_t__ commPagePtr ;
 int rtclock_base_abstime ;

void
commpage_update_timebase(void)
{
 if (commPagePtr) {
  *((uint64_t*)(_COMM_PAGE_TIMEBASE_OFFSET+_COMM_PAGE_RW_OFFSET)) = rtclock_base_abstime;
 }
}
