
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ledger_entry {int le_flags; } ;
typedef TYPE_1__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_4__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_1__*,int) ;
 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LF_PANIC_ON_NEGATIVE ;
 int TRUE ;

kern_return_t
ledger_get_panic_on_negative(ledger_t ledger, int entry, int *panic_on_negative)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_ARGUMENT);

 le = &ledger->l_entries[entry];

 if (le->le_flags & LF_PANIC_ON_NEGATIVE) {
  *panic_on_negative = TRUE;
 } else {
  *panic_on_negative = FALSE;
 }

 return (KERN_SUCCESS);
}
