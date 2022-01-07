
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_6__ {TYPE_1__* l_entries; } ;
struct TYPE_5__ {int le_flags; } ;


 int ENTRY_VALID (TYPE_2__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int flag_set (int *,int) ;
 int lprintf (char*) ;

kern_return_t
ledger_set_action(ledger_t ledger, int entry, int action)
{
 lprintf(("ledger_set_action: %#x\n", action));
 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 flag_set(&ledger->l_entries[entry].le_flags, action);
 return (KERN_SUCCESS);
}
