
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ledger_entry {scalar_t__ le_debit; scalar_t__ le_credit; int le_flags; } ;
typedef TYPE_1__* ledger_t ;
typedef scalar_t__ ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int LF_TRACK_CREDIT_ONLY ;
 int OSCompareAndSwap64 (scalar_t__,scalar_t__,scalar_t__*) ;
 int assert (int) ;
 int current_thread () ;
 int lprintf (char*) ;

kern_return_t
ledger_zero_balance(ledger_t ledger, int entry)
{
 struct ledger_entry *le;
 ledger_amount_t debit, credit;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 le = &ledger->l_entries[entry];

top:
 debit = le->le_debit;
 credit = le->le_credit;

 if (le->le_flags & LF_TRACK_CREDIT_ONLY) {
  assert(le->le_debit == 0);
  if (!OSCompareAndSwap64(credit, 0, &le->le_credit)) {
   goto top;
  }
  lprintf(("%p zeroed %lld->%lld\n", current_thread(), le->le_credit, 0));
 } else if (credit > debit) {
  if (!OSCompareAndSwap64(debit, credit, &le->le_debit))
   goto top;
  lprintf(("%p zeroed %lld->%lld\n", current_thread(), le->le_debit, le->le_credit));
 } else if (credit < debit) {
  if (!OSCompareAndSwap64(credit, debit, &le->le_credit))
   goto top;
  lprintf(("%p zeroed %lld->%lld\n", current_thread(), le->le_credit, le->le_debit));
 }

 return (KERN_SUCCESS);
}
