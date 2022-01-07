
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int le_last_refill; int le_refill_period; } ;
struct TYPE_8__ {TYPE_1__ le_refill; } ;
struct ledger_entry {scalar_t__ le_limit; int le_flags; TYPE_2__ _le; } ;
typedef TYPE_3__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_9__ {struct ledger_entry* l_entries; } ;


 int ENTRY_VALID (TYPE_3__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 scalar_t__ LEDGER_LIMIT_INFINITY ;
 int LF_REFILL_SCHEDULED ;
 int LF_TRACKING_MAX ;
 int assert (int) ;
 int flag_set (int*,int ) ;
 int ledger_zero_balance (TYPE_3__*,int) ;
 int lprintf (char*) ;
 int mach_absolute_time () ;
 int nsecs_to_abstime (int ) ;

kern_return_t
ledger_set_period(ledger_t ledger, int entry, uint64_t period)
{
 struct ledger_entry *le;

 lprintf(("ledger_set_period: %llx\n", period));
 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 le = &ledger->l_entries[entry];





 assert(le->le_limit != LEDGER_LIMIT_INFINITY);

 if (le->le_flags & LF_TRACKING_MAX) {



  return (KERN_INVALID_VALUE);
 }

 le->_le.le_refill.le_refill_period = nsecs_to_abstime(period);







 le->_le.le_refill.le_last_refill = mach_absolute_time();
 ledger_zero_balance(ledger, entry);

 flag_set(&le->le_flags, LF_REFILL_SCHEDULED);

 return (KERN_SUCCESS);
}
