
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ledger_entry {int le_debit; int le_credit; } ;
typedef TYPE_1__* ledger_t ;
typedef int ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;

kern_return_t
ledger_get_entries(ledger_t ledger, int entry, ledger_amount_t *credit,
    ledger_amount_t *debit)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_ARGUMENT);

 le = &ledger->l_entries[entry];

 *credit = le->le_credit;
 *debit = le->le_debit;

 return (KERN_SUCCESS);
}
