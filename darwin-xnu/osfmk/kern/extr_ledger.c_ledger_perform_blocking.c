
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ le_refill_period; scalar_t__ le_last_refill; } ;
struct TYPE_6__ {TYPE_1__ le_refill; } ;
struct ledger_entry {int le_flags; TYPE_2__ _le; } ;
typedef TYPE_3__* ledger_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_7__ {int l_size; struct ledger_entry* l_entries; } ;


 int AST_LEDGER ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int LEDGER_ACTION_BLOCK ;
 int LF_TRACKING_MAX ;
 int LF_WAKE_NEEDED ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_INTERRUPTIBLE ;
 scalar_t__ THREAD_WAITING ;
 int assert (int) ;
 scalar_t__ assert_wait_deadline (struct ledger_entry*,int ,scalar_t__) ;
 int flag_set (int*,int ) ;
 int limit_exceeded (struct ledger_entry*) ;
 scalar_t__ thread_block_reason (int ,int *,int ) ;

__attribute__((used)) static kern_return_t
ledger_perform_blocking(ledger_t l)
{
 int i;
 kern_return_t ret;
 struct ledger_entry *le;

 for (i = 0; i < l->l_size; i++) {
  le = &l->l_entries[i];
  if ((!limit_exceeded(le)) ||
      ((le->le_flags & LEDGER_ACTION_BLOCK) == 0))
   continue;

  assert(!(le->le_flags & LF_TRACKING_MAX));


  ret = assert_wait_deadline(le, THREAD_INTERRUPTIBLE,
      le->_le.le_refill.le_last_refill + le->_le.le_refill.le_refill_period);
  if (ret != THREAD_WAITING)
   return(KERN_SUCCESS);


  flag_set(&le->le_flags, LF_WAKE_NEEDED);

  ret = thread_block_reason(THREAD_CONTINUE_NULL, ((void*)0),
      AST_LEDGER);
  if (ret != THREAD_AWAKENED)
   return(KERN_SUCCESS);







  return(KERN_FAILURE);
 }
 return(KERN_SUCCESS);
}
