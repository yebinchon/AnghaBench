
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 scalar_t__ _COMM_PAGE_MEMORY_PRESSURE ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;

void
commpage_set_memory_pressure(
    unsigned int pressure )
{
 if (commPagePtr == 0)
  return;
 *((uint32_t *)(_COMM_PAGE_MEMORY_PRESSURE+_COMM_PAGE_RW_OFFSET)) = pressure;
}
