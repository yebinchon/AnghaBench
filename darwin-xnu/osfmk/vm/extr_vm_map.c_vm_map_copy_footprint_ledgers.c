
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_2__ {int wired_mem; int network_nonvolatile_compressed; int network_nonvolatile; int page_table; int alternate_accounting_compressed; int alternate_accounting; int iokit_mapped; int internal_compressed; int internal; int purgeable_nonvolatile_compressed; int purgeable_nonvolatile; int phys_footprint; } ;


 TYPE_1__ task_ledgers ;
 int vm_map_copy_ledger (int ,int ,int ) ;

void
vm_map_copy_footprint_ledgers(
 task_t old_task,
 task_t new_task)
{
 vm_map_copy_ledger(old_task, new_task, task_ledgers.phys_footprint);
 vm_map_copy_ledger(old_task, new_task, task_ledgers.purgeable_nonvolatile);
 vm_map_copy_ledger(old_task, new_task, task_ledgers.purgeable_nonvolatile_compressed);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.internal);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.internal_compressed);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.iokit_mapped);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.alternate_accounting);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.alternate_accounting_compressed);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.page_table);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.network_nonvolatile);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.network_nonvolatile_compressed);
    vm_map_copy_ledger(old_task, new_task, task_ledgers.wired_mem);
}
