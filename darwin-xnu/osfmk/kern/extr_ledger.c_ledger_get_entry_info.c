
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct ledger_entry_info {int dummy; } ;
struct ledger_entry {int dummy; } ;
typedef TYPE_1__* ledger_t ;
struct TYPE_3__ {int l_size; struct ledger_entry* l_entries; } ;


 int assert (int ) ;
 int ledger_fill_entry_info (struct ledger_entry*,struct ledger_entry_info*,int ) ;
 int mach_absolute_time () ;

void
ledger_get_entry_info(ledger_t ledger,
                      int entry,
                      struct ledger_entry_info *lei)
{
 uint64_t now = mach_absolute_time();

 assert(ledger != ((void*)0));
 assert(lei != ((void*)0));

 if (entry >= 0 && entry < ledger->l_size) {
  struct ledger_entry *le = &ledger->l_entries[entry];
  ledger_fill_entry_info(le, lei, now);
 }
}
