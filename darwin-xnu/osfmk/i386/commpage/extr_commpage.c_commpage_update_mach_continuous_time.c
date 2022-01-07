
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_CONT_TIMEBASE ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;

void
commpage_update_mach_continuous_time(uint64_t sleeptime)
{
 char *cp;
 cp = commPagePtr32;
 if (cp) {
  cp += (_COMM_PAGE_CONT_TIMEBASE - _COMM_PAGE32_START_ADDRESS);
  *(uint64_t *)cp = sleeptime;
 }

 cp = commPagePtr64;
 if (cp) {
  cp += (_COMM_PAGE_CONT_TIMEBASE - _COMM_PAGE32_START_ADDRESS);
  *(uint64_t *)cp = sleeptime;
 }
}
