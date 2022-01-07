
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int OSCompareAndSwap64 (int ,int ,int *) ;
 scalar_t__ _COMM_PAGE_CONT_TIMEBASE ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;

void
commpage_update_mach_continuous_time(uint64_t sleeptime)
{
 if (commPagePtr) {



  uint64_t *c_time_base = (uint64_t *)(_COMM_PAGE_CONT_TIMEBASE + _COMM_PAGE_RW_OFFSET);
  uint64_t old;
  do {
   old = *c_time_base;
  } while(!OSCompareAndSwap64(old, sleeptime, c_time_base));

 }
}
