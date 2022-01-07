
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
struct ledger_entry {int dummy; } ;
typedef TYPE_1__* ledger_t ;
struct TYPE_4__ {int l_size; struct ledger_entry* l_entries; } ;


 int assert (int) ;
 int ledger_entry_check_new_balance (int ,TYPE_1__*,int,struct ledger_entry*) ;

void
ledger_check_new_balance(thread_t thread, ledger_t ledger, int entry)
{
 struct ledger_entry *le;
 assert(entry > 0 && entry <= ledger->l_size);
 le = &ledger->l_entries[entry];
 ledger_entry_check_new_balance(thread, ledger, entry, le);
}
