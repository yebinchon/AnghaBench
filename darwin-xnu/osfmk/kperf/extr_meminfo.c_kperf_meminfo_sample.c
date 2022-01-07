
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct meminfo {void* purgeable_volatile_compressed; void* purgeable_volatile; int phys_footprint; } ;
typedef void* ledger_amount_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_6__ {int purgeable_volatile_compressed; int purgeable_volatile; } ;
struct TYPE_5__ {int ledger; } ;


 int BUF_INFO (int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ KERN_SUCCESS ;
 int PERF_MI_SAMPLE ;
 void* UINT64_MAX ;
 int assert (int ) ;
 int get_task_phys_footprint (TYPE_1__*) ;
 scalar_t__ ledger_get_entries (int ,int ,void**,void**) ;
 TYPE_2__ task_ledgers ;

void
kperf_meminfo_sample(task_t task, struct meminfo *mi)
{
 ledger_amount_t credit, debit;
 kern_return_t kr;

 assert(mi != ((void*)0));

 BUF_INFO(PERF_MI_SAMPLE | DBG_FUNC_START);

 mi->phys_footprint = get_task_phys_footprint(task);

 kr = ledger_get_entries(task->ledger, task_ledgers.purgeable_volatile,
                         &credit, &debit);
 if (kr == KERN_SUCCESS) {
  mi->purgeable_volatile = credit - debit;
 } else {
  mi->purgeable_volatile = UINT64_MAX;
 }

 kr = ledger_get_entries(task->ledger,
                         task_ledgers.purgeable_volatile_compressed,
                         &credit, &debit);
 if (kr == KERN_SUCCESS) {
  mi->purgeable_volatile_compressed = credit - debit;
 } else {
  mi->purgeable_volatile_compressed = UINT64_MAX;
 }

 BUF_INFO(PERF_MI_SAMPLE | DBG_FUNC_END);
}
