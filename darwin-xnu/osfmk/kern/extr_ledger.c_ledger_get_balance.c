
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ledger_entry {int le_flags; scalar_t__ le_debit; scalar_t__ le_credit; } ;
typedef TYPE_1__* ledger_t ;
typedef scalar_t__ ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LF_TRACK_CREDIT_ONLY ;
 int assert (int) ;

kern_return_t
ledger_get_balance(ledger_t ledger, int entry, ledger_amount_t *balance)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_ARGUMENT);

 le = &ledger->l_entries[entry];

 if (le->le_flags & LF_TRACK_CREDIT_ONLY) {
  assert(le->le_debit == 0);
 } else {
  assert((le->le_credit >= 0) && (le->le_debit >= 0));
 }

 *balance = le->le_credit - le->le_debit;

 return (KERN_SUCCESS);
}
