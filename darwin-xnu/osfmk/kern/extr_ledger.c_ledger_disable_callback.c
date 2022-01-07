
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_6__ {TYPE_1__* l_entries; } ;
struct TYPE_5__ {int le_flags; int le_warn_level; } ;


 int ENTRY_VALID (TYPE_2__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int LEDGER_ACTION_CALLBACK ;
 int LEDGER_LIMIT_INFINITY ;
 int flag_clear (int *,int ) ;

kern_return_t
ledger_disable_callback(ledger_t ledger, int entry)
{
 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);







 ledger->l_entries[entry].le_warn_level = LEDGER_LIMIT_INFINITY;
 flag_clear(&ledger->l_entries[entry].le_flags, LEDGER_ACTION_CALLBACK);
 return (KERN_SUCCESS);
}
