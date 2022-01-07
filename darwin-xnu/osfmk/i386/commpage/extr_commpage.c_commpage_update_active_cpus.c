
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ _COMM_PAGE32_BASE_ADDRESS ;
 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_ACTIVE_CPUS ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;
 int commpage_active_cpus_lock ;
 scalar_t__ processor_avail_count ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

void
commpage_update_active_cpus(void)
{
 char *cp;
 volatile uint8_t *ip;


 if (!commPagePtr32)
  return;

 simple_lock(&commpage_active_cpus_lock);

 cp = commPagePtr32;
 cp += (_COMM_PAGE_ACTIVE_CPUS - _COMM_PAGE32_BASE_ADDRESS);
 ip = (volatile uint8_t*) cp;
 *ip = (uint8_t) processor_avail_count;

 cp = commPagePtr64;
 if ( cp ) {
  cp += (_COMM_PAGE_ACTIVE_CPUS - _COMM_PAGE32_START_ADDRESS);
  ip = (volatile uint8_t*) cp;
  *ip = (uint8_t) processor_avail_count;
 }

 simple_unlock(&commpage_active_cpus_lock);
}
