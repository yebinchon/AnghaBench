
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ledger_entry {int le_flags; } ;
typedef TYPE_1__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int l_size; struct ledger_entry* l_entries; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LF_ENTRY_ACTIVE ;
 int flag_set (int*,int) ;

kern_return_t
ledger_entry_setactive(ledger_t ledger, int entry)
{
 struct ledger_entry *le;

 if ((ledger == ((void*)0)) || (entry < 0) || (entry >= ledger->l_size))
  return (KERN_INVALID_ARGUMENT);

 le = &ledger->l_entries[entry];
 if ((le->le_flags & LF_ENTRY_ACTIVE) == 0) {
  flag_set(&le->le_flags, LF_ENTRY_ACTIVE);
 }
 return (KERN_SUCCESS);
}
