
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ caller_will_remove_entries_for_element; } ;
typedef TYPE_1__ btlog_t ;



uint32_t
calculate_hashidx_for_element(uintptr_t elem, btlog_t *btlog)
{
 if (btlog->caller_will_remove_entries_for_element) {
  uint32_t addr = 0;

  addr = (uint32_t) ((elem & 0xFF00) >> 0x8);

  return addr;
 } else {
  return 0;
 }
}
