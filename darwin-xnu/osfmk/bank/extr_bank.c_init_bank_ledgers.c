
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * ledger_template_t ;
struct TYPE_2__ {int cpu_time; int energy; } ;


 int assert (int ) ;
 int * bank_ledger_template ;
 TYPE_1__ bank_ledgers ;
 int ledger_entry_add (int *,char*,char*,char*) ;
 int ledger_template_complete (int *) ;
 int * ledger_template_create (char*) ;
 int panic (char*) ;

__attribute__((used)) static void
init_bank_ledgers(void) {
 ledger_template_t t;
 int idx;

 assert(bank_ledger_template == ((void*)0));

 if ((t = ledger_template_create("Bank ledger")) == ((void*)0))
  panic("couldn't create bank ledger template");

 if ((idx = ledger_entry_add(t, "cpu_time", "sched", "ns")) < 0) {
  panic("couldn't create cpu_time entry for bank ledger template");
 }
 bank_ledgers.cpu_time = idx;

 if ((idx = ledger_entry_add(t, "energy", "power", "nj")) < 0) {
  panic("couldn't create energy entry for bank ledger template");
 }
 bank_ledgers.energy = idx;

 ledger_template_complete(t);
 bank_ledger_template = t;
}
