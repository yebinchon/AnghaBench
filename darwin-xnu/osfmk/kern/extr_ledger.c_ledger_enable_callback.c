
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_7__ {TYPE_1__* l_entries; } ;
struct TYPE_6__ {int le_flags; } ;


 int ENTRY_VALID (TYPE_2__*,int) ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int LEDGER_ACTION_CALLBACK ;
 int assert (int ) ;
 int * entry_get_callback (TYPE_2__*,int) ;
 int flag_set (int *,int ) ;

kern_return_t
ledger_enable_callback(ledger_t ledger, int entry)
{
 if (!ENTRY_VALID(ledger, entry))
  return (KERN_INVALID_VALUE);

 assert(entry_get_callback(ledger, entry) != ((void*)0));

 flag_set(&ledger->l_entries[entry].le_flags, LEDGER_ACTION_CALLBACK);
 return (KERN_SUCCESS);
}
