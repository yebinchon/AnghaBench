
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
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LF_CALLED_BACK ;
 int flag_clear (int *,int ) ;

kern_return_t
ledger_reset_callback_state(ledger_t ledger, int entry)
{
 struct ledger_entry *le;

 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_ARGUMENT);

 le = &ledger->l_entries[entry];

 flag_clear(&le->le_flags, LF_CALLED_BACK);

 return (KERN_SUCCESS);
}
