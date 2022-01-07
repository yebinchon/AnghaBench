
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ledger_entry {int le_limit; } ;
typedef TYPE_1__* ledger_t ;
typedef int ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int lprintf (char*) ;

kern_return_t
ledger_get_limit(ledger_t ledger, int entry, ledger_amount_t *limit)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 le = &ledger->l_entries[entry];
 *limit = le->le_limit;

 lprintf(("ledger_get_limit: %lld\n", *limit));

 return (KERN_SUCCESS);
}
