
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ _COMM_PAGE32_BASE_ADDRESS ;
 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_MEMORY_PRESSURE ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;

void
commpage_set_memory_pressure(
 unsigned int pressure )
{
 char *cp;
 uint32_t *ip;

 cp = commPagePtr32;
 if ( cp ) {
  cp += (_COMM_PAGE_MEMORY_PRESSURE - _COMM_PAGE32_BASE_ADDRESS);
  ip = (uint32_t*) (void *) cp;
  *ip = (uint32_t) pressure;
 }

 cp = commPagePtr64;
 if ( cp ) {
  cp += (_COMM_PAGE_MEMORY_PRESSURE - _COMM_PAGE32_START_ADDRESS);
  ip = (uint32_t*) (void *) cp;
  *ip = (uint32_t) pressure;
 }

}
