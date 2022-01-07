
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int OSCompareAndSwap64 (int ,int ,int *) ;
 scalar_t__ _COMM_PAGE_BOOTTIME_USEC ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;

void
commpage_update_boottime(uint64_t value)
{
 if (commPagePtr) {



  uint64_t *cp = (uint64_t *)(_COMM_PAGE_BOOTTIME_USEC + _COMM_PAGE_RW_OFFSET);
  uint64_t old_value;
  do {
   old_value = *cp;
  } while (!OSCompareAndSwap64(old_value, value, cp));

 }
}
