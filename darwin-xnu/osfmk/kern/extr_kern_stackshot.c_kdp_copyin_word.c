
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_4__ {int map; } ;


 int kdp_copyin (int ,int ,int *,int,int ,int *) ;
 scalar_t__ task_has_64Bit_data (TYPE_1__*) ;

boolean_t
kdp_copyin_word(
 task_t task, uint64_t addr, uint64_t *result, boolean_t try_fault, uint32_t *kdp_fault_results)
{
 if (task_has_64Bit_data(task)) {
  return kdp_copyin(task->map, addr, result, sizeof(uint64_t), try_fault, kdp_fault_results);
 } else {
  uint32_t buf;
  boolean_t r = kdp_copyin(task->map, addr, &buf, sizeof(uint32_t), try_fault, kdp_fault_results);
  *result = buf;
  return r;
 }
}
