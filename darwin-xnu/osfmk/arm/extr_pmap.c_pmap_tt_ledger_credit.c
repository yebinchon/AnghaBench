
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ pmap_t ;
struct TYPE_2__ {int page_table; int phys_footprint; } ;


 scalar_t__ kernel_pmap ;
 int pmap_ledger_credit (scalar_t__,int ,int ) ;
 TYPE_1__ task_ledgers ;

__attribute__((used)) static inline void
pmap_tt_ledger_credit(
 pmap_t pmap,
 vm_size_t size)
{
 if (pmap != kernel_pmap) {
  pmap_ledger_credit(pmap, task_ledgers.phys_footprint, size);
  pmap_ledger_credit(pmap, task_ledgers.page_table, size);
 }
}
