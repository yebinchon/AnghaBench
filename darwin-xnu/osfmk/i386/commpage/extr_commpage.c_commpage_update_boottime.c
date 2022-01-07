
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_BOOTTIME_USEC ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;

void
commpage_update_boottime(uint64_t boottime)
{
 char *cp;
 cp = commPagePtr32;
 if (cp) {
  cp += (_COMM_PAGE_BOOTTIME_USEC - _COMM_PAGE32_START_ADDRESS);
  *(uint64_t *)cp = boottime;
 }

 cp = commPagePtr64;
 if (cp) {
  cp += (_COMM_PAGE_BOOTTIME_USEC - _COMM_PAGE32_START_ADDRESS);
  *(uint64_t *)cp = boottime;
 }
}
