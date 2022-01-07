
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ le_last_refill; scalar_t__ le_refill_period; } ;
struct TYPE_8__ {TYPE_1__ le_refill; } ;
struct ledger_entry {int le_flags; TYPE_2__ _le; } ;
struct ledger_callback {int lc_param1; int lc_param0; int (* lc_func ) (scalar_t__,int ,int ) ;} ;
typedef TYPE_3__* ledger_t ;
struct TYPE_9__ {int l_size; struct ledger_entry* l_entries; } ;


 scalar_t__ FALSE ;
 int LEDGER_ACTION_BLOCK ;
 int LEDGER_ACTION_CALLBACK ;
 scalar_t__ LEDGER_WARNING_DIPPED_BELOW ;
 scalar_t__ LEDGER_WARNING_ROSE_ABOVE ;
 int LF_CALLED_BACK ;
 int LF_REFILL_SCHEDULED ;
 int LF_TRACKING_MAX ;
 int LF_WARNED ;
 int assert (int) ;
 struct ledger_callback* entry_get_callback (TYPE_3__*,int) ;
 int flag_clear (int*,int) ;
 int flag_set (int*,int) ;
 int ledger_refill (scalar_t__,TYPE_3__*,int) ;
 scalar_t__ limit_exceeded (struct ledger_entry*) ;
 int stub1 (scalar_t__,int ,int ) ;
 int stub2 (scalar_t__,int ,int ) ;
 int stub3 (scalar_t__,int ,int ) ;
 scalar_t__ warn_level_exceeded (struct ledger_entry*) ;

__attribute__((used)) static uint32_t
ledger_check_needblock(ledger_t l, uint64_t now)
{
 int i;
 uint32_t flags, block = 0;
 struct ledger_entry *le;
 struct ledger_callback *lc;


 for (i = 0; i < l->l_size; i++) {
  le = &l->l_entries[i];

  lc = entry_get_callback(l, i);

  if (limit_exceeded(le) == FALSE) {
   if (le->le_flags & LEDGER_ACTION_CALLBACK) {





    assert(lc != ((void*)0));



    if (warn_level_exceeded(le)) {
     flags = flag_set(&le->le_flags, LF_WARNED);
     if ((flags & LF_WARNED) == 0) {
      lc->lc_func(LEDGER_WARNING_ROSE_ABOVE, lc->lc_param0, lc->lc_param1);
     }
    } else {
     flags = flag_clear(&le->le_flags, LF_WARNED);
     if (flags & LF_WARNED) {
      lc->lc_func(LEDGER_WARNING_DIPPED_BELOW, lc->lc_param0, lc->lc_param1);
     }
    }
   }

   continue;
  }


  if (le->le_flags & LF_REFILL_SCHEDULED) {
   assert(!(le->le_flags & LF_TRACKING_MAX));

   if ((le->_le.le_refill.le_last_refill + le->_le.le_refill.le_refill_period) > now) {
    ledger_refill(now, l, i);
    if (limit_exceeded(le) == FALSE)
     continue;
   }
  }

  if (le->le_flags & LEDGER_ACTION_BLOCK)
   block = 1;
  if ((le->le_flags & LEDGER_ACTION_CALLBACK) == 0)
   continue;





  assert(lc != ((void*)0));
  flags = flag_set(&le->le_flags, LF_CALLED_BACK);

  if (flags & LF_CALLED_BACK)
   continue;
  lc->lc_func(FALSE, lc->lc_param0, lc->lc_param1);
 }
 return(block);
}
