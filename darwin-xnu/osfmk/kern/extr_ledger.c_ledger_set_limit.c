
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ le_last_refill; } ;
struct TYPE_8__ {TYPE_1__ le_refill; } ;
struct ledger_entry {int le_limit; int le_flags; int le_warn_level; TYPE_2__ _le; } ;
typedef TYPE_3__* ledger_t ;
typedef scalar_t__ ledger_amount_t ;
typedef int kern_return_t ;
struct TYPE_9__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_3__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 scalar_t__ LEDGER_LIMIT_INFINITY ;
 int LF_CALLED_BACK ;
 int LF_REFILL_SCHEDULED ;
 int LF_TRACKING_MAX ;
 int LF_WARNED ;
 int assert (int) ;
 int flag_clear (int*,int ) ;
 int ledger_disable_refill (TYPE_3__*,int) ;
 int ledger_limit_entry_wakeup (struct ledger_entry*) ;
 int lprintf (char*) ;

kern_return_t
ledger_set_limit(ledger_t ledger, int entry, ledger_amount_t limit,
    uint8_t warn_level_percentage)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 lprintf(("ledger_set_limit: %lld\n", limit));
 le = &ledger->l_entries[entry];

 if (limit == LEDGER_LIMIT_INFINITY) {





  ledger_disable_refill(ledger, entry);
 }

 le->le_limit = limit;
 if (le->le_flags & LF_REFILL_SCHEDULED) {
  assert(!(le->le_flags & LF_TRACKING_MAX));
  le->_le.le_refill.le_last_refill = 0;
 }
 flag_clear(&le->le_flags, LF_CALLED_BACK);
 flag_clear(&le->le_flags, LF_WARNED);
 ledger_limit_entry_wakeup(le);

 if (warn_level_percentage != 0) {
  assert(warn_level_percentage <= 100);
  assert(limit > 0);
  assert(limit != LEDGER_LIMIT_INFINITY);
  le->le_warn_level = (le->le_limit * warn_level_percentage) / 100;
 } else {
  le->le_warn_level = LEDGER_LIMIT_INFINITY;
 }

 return (KERN_SUCCESS);
}
