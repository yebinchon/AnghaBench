
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct ledger_entry_info {void* lei_last_refill; void* lei_refill_period; scalar_t__ lei_debit; scalar_t__ lei_credit; scalar_t__ lei_balance; int lei_limit; } ;
struct TYPE_3__ {scalar_t__ le_last_refill; scalar_t__ le_refill_period; } ;
struct TYPE_4__ {TYPE_1__ le_refill; } ;
struct ledger_entry {int le_flags; TYPE_2__ _le; scalar_t__ le_debit; scalar_t__ le_credit; int le_limit; } ;


 int LF_REFILL_SCHEDULED ;
 void* abstime_to_nsecs (scalar_t__) ;
 int assert (int ) ;
 int memset (struct ledger_entry_info*,int ,int) ;

__attribute__((used)) static void
ledger_fill_entry_info(struct ledger_entry *le,
                       struct ledger_entry_info *lei,
                       uint64_t now)
{
 assert(le != ((void*)0));
 assert(lei != ((void*)0));

 memset(lei, 0, sizeof (*lei));

 lei->lei_limit = le->le_limit;
 lei->lei_credit = le->le_credit;
 lei->lei_debit = le->le_debit;
 lei->lei_balance = lei->lei_credit - lei->lei_debit;
 lei->lei_refill_period = (le->le_flags & LF_REFILL_SCHEDULED) ?
            abstime_to_nsecs(le->_le.le_refill.le_refill_period) : 0;
 lei->lei_last_refill = abstime_to_nsecs(now - le->_le.le_refill.le_last_refill);
}
