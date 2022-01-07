
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ledger_entry {int le_debit; int le_credit; } ;
typedef TYPE_1__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_5__ {scalar_t__ l_template; struct ledger_entry* l_entries; } ;


 scalar_t__ ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_SUCCESS ;
 int OSAddAtomic64 (int ,int *) ;
 int assert (int) ;

kern_return_t
ledger_rollup_entry(ledger_t to_ledger, ledger_t from_ledger, int entry)
{
 struct ledger_entry *from_le, *to_le;

 assert(to_ledger->l_template == from_ledger->l_template);
 if (ENTRY_VALID(from_ledger, entry) && ENTRY_VALID(to_ledger, entry)) {
  from_le = &from_ledger->l_entries[entry];
  to_le = &to_ledger->l_entries[entry];
  OSAddAtomic64(from_le->le_credit, &to_le->le_credit);
  OSAddAtomic64(from_le->le_debit, &to_le->le_debit);
 }

 return (KERN_SUCCESS);
}
