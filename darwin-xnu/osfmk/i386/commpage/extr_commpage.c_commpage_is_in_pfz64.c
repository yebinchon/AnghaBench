
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ addr64_t ;


 scalar_t__ _COMM_TEXT_PFZ_END_OFFSET ;
 scalar_t__ _COMM_TEXT_PFZ_START_OFFSET ;
 scalar_t__ commpage_text64_location ;

uint32_t
commpage_is_in_pfz64(addr64_t addr64)
{
 if ( (addr64 >= (commpage_text64_location + _COMM_TEXT_PFZ_START_OFFSET))
      && (addr64 < (commpage_text64_location + _COMM_TEXT_PFZ_END_OFFSET))) {
  return 1;
 }
 else
  return 0;
}
