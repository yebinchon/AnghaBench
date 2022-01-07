
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int le_refill_period; } ;
struct TYPE_7__ {TYPE_1__ le_refill; } ;
struct ledger_entry {TYPE_2__ _le; } ;
typedef TYPE_3__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_8__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_3__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int abstime_to_nsecs (int ) ;
 int lprintf (char*) ;

kern_return_t
ledger_get_period(ledger_t ledger, int entry, uint64_t *period)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 le = &ledger->l_entries[entry];
 *period = abstime_to_nsecs(le->_le.le_refill.le_refill_period);
 lprintf(("ledger_get_period: %llx\n", *period));
 return (KERN_SUCCESS);
}
