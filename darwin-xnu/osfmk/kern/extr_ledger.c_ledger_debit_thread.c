
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct ledger_entry {int le_flags; scalar_t__ le_debit; scalar_t__ le_credit; } ;
typedef TYPE_1__* ledger_t ;
typedef scalar_t__ ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_5__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LF_TRACK_CREDIT_ONLY ;
 scalar_t__ OSAddAtomic64 (scalar_t__,scalar_t__*) ;
 int assert (int) ;
 int ledger_entry_check_new_balance (scalar_t__,TYPE_1__*,int,struct ledger_entry*) ;
 int lprintf (char*) ;

kern_return_t
ledger_debit_thread(thread_t thread, ledger_t ledger, int entry, ledger_amount_t amount)
{
 struct ledger_entry *le;
 ledger_amount_t old, new;

 if (!ENTRY_VALID(ledger, entry) || (amount < 0))
  return (KERN_INVALID_ARGUMENT);

 if (amount == 0)
  return (KERN_SUCCESS);

 le = &ledger->l_entries[entry];

 if (le->le_flags & LF_TRACK_CREDIT_ONLY) {
  assert(le->le_debit == 0);
  old = OSAddAtomic64(-amount, &le->le_credit);
  new = old - amount;
 } else {
  old = OSAddAtomic64(amount, &le->le_debit);
  new = old + amount;
 }
 lprintf(("%p Debit %lld->%lld\n", thread, old, new));

 if (thread) {
  ledger_entry_check_new_balance(thread, ledger, entry, le);
 }

 return (KERN_SUCCESS);
}
