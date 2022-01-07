
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int thread_t ;
struct TYPE_5__ {scalar_t__ le_last_refill; scalar_t__ le_refill_period; } ;
struct TYPE_4__ {scalar_t__ le_lifetime_max; scalar_t__ le_interval_max; } ;
struct TYPE_6__ {TYPE_2__ le_refill; TYPE_1__ _le_max; } ;
struct ledger_entry {int le_flags; scalar_t__ le_credit; scalar_t__ le_debit; TYPE_3__ _le; } ;
typedef int ledger_t ;
typedef scalar_t__ ledger_amount_t ;


 int LEDGER_ACTION_BLOCK ;
 int LEDGER_ACTION_CALLBACK ;
 int LF_CALLED_BACK ;
 int LF_PANIC_ON_NEGATIVE ;
 int LF_REFILL_SCHEDULED ;
 int LF_TRACKING_MAX ;
 int LF_WAKE_NEEDED ;
 int LF_WARNED ;
 int act_set_astledger_async (int ) ;
 int assert (int) ;
 scalar_t__ entry_get_callback (int ,int) ;
 int ledger_limit_entry_wakeup (struct ledger_entry*) ;
 int ledger_refill (scalar_t__,int ,int) ;
 scalar_t__ limit_exceeded (struct ledger_entry*) ;
 scalar_t__ mach_absolute_time () ;
 int panic (char*,int ,int,struct ledger_entry*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ warn_level_exceeded (struct ledger_entry*) ;

void
ledger_entry_check_new_balance(thread_t thread, ledger_t ledger,
                               int entry, struct ledger_entry *le)
{
 if (le->le_flags & LF_TRACKING_MAX) {
  ledger_amount_t balance = le->le_credit - le->le_debit;

  if (balance > le->_le._le_max.le_lifetime_max){
   le->_le._le_max.le_lifetime_max = balance;
  }






 }


 if (le->le_flags & LF_REFILL_SCHEDULED) {
  assert(!(le->le_flags & LF_TRACKING_MAX));

  uint64_t now = mach_absolute_time();
  if ((now - le->_le.le_refill.le_last_refill) > le->_le.le_refill.le_refill_period)
   ledger_refill(now, ledger, entry);
 }

 if (limit_exceeded(le)) {
  if ((le->le_flags & LEDGER_ACTION_BLOCK) ||
      (!(le->le_flags & LF_CALLED_BACK) &&
      entry_get_callback(ledger, entry))) {
   act_set_astledger_async(thread);
  }
 } else {






  if (le->le_flags & LF_WAKE_NEEDED)
   ledger_limit_entry_wakeup(le);

  if (le->le_flags & LEDGER_ACTION_CALLBACK) {





    if (warn_level_exceeded(le)) {



     if ((le->le_flags & LF_WARNED) == 0) {






     act_set_astledger_async(thread);
    }
   } else {



     if (le->le_flags & LF_WARNED) {







     act_set_astledger_async(thread);
    }
   }
  }
 }

 if ((le->le_flags & LF_PANIC_ON_NEGATIVE) &&
     (le->le_credit < le->le_debit)) {
  panic("ledger_entry_check_new_balance(%p,%d): negative ledger %p credit:%lld debit:%lld balance:%lld\n",
        ledger, entry, le,
        le->le_credit,
        le->le_debit,
        le->le_credit - le->le_debit);
 }
}
