
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_5__ {int tkm_shared; } ;
struct TYPE_4__ {int t_ledger; } ;


 TYPE_1__* current_thread () ;
 int ledger_credit (int ,int ,int ) ;
 TYPE_2__ task_ledgers ;

__attribute__((used)) static void
KALLOC_ZINFO_SFREE(vm_size_t bytes)
{
 thread_t thr = current_thread();
 ledger_credit(thr->t_ledger, task_ledgers.tkm_shared, bytes);
}
