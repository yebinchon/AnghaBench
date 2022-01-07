
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int le_lifetime_max; } ;
struct TYPE_7__ {TYPE_1__ _le_max; } ;
struct ledger_entry {int le_flags; TYPE_2__ _le; } ;
typedef TYPE_3__* ledger_t ;
typedef int ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_8__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_3__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int LF_TRACKING_MAX ;
 int lprintf (char*) ;

kern_return_t
ledger_get_lifetime_max(ledger_t ledger, int entry,
        ledger_amount_t *max_lifetime_balance)
{
 struct ledger_entry *le;
 le = &ledger->l_entries[entry];

 if (!ENTRY_VALID(ledger, entry) || !(le->le_flags & LF_TRACKING_MAX)) {
  return (KERN_INVALID_VALUE);
 }

 *max_lifetime_balance = le->_le._le_max.le_lifetime_max;
 lprintf(("ledger_get_lifetime_max: %lld\n", *max_lifetime_balance));

 return (KERN_SUCCESS);
}
