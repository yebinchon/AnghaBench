
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
typedef int ledger_amount_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int phys_footprint; } ;
struct TYPE_4__ {int ledger; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ledger_get_limit (int ,int ,int *) ;
 TYPE_2__ task_ledgers ;

uint64_t get_task_phys_footprint_limit(task_t task)
{
 kern_return_t ret;
 ledger_amount_t max;

 ret = ledger_get_limit(task->ledger, task_ledgers.phys_footprint, &max);
 if (KERN_SUCCESS == ret) {
  return max;
 }

 return 0;
}
