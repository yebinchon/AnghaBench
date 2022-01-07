
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pmap_t ;
struct TYPE_2__ {int tkm_private; } ;


 int pmap_ledger_debit (int ,int ,int) ;
 TYPE_1__ task_ledgers ;

__attribute__((used)) static inline void
PMAP_ZINFO_PFREE(
 pmap_t pmap,
 int bytes)
{
 pmap_ledger_debit(pmap, task_ledgers.tkm_private, bytes);
}
