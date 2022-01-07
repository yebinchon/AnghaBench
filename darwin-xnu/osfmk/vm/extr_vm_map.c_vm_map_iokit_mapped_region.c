
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_map_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_5__ {int phys_footprint; int iokit_mapped; } ;
struct TYPE_4__ {int ledger; } ;


 int ledger_credit (int ,int ,int ) ;
 TYPE_3__ task_ledgers ;
 TYPE_1__* vm_map_pmap (int ) ;

void
vm_map_iokit_mapped_region(vm_map_t map, vm_size_t bytes)
{
 pmap_t pmap = vm_map_pmap(map);

 ledger_credit(pmap->ledger, task_ledgers.iokit_mapped, bytes);
 ledger_credit(pmap->ledger, task_ledgers.phys_footprint, bytes);
}
