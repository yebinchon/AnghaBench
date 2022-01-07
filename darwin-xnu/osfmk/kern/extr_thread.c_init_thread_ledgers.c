
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * ledger_template_t ;
struct TYPE_2__ {int cpu_time; } ;


 int assert (int ) ;
 int ledger_entry_add (int *,char*,char*,char*) ;
 scalar_t__ ledger_set_callback (int *,int,int ,int *,int *) ;
 int ledger_template_complete (int *) ;
 int * ledger_template_create (char*) ;
 int panic (char*) ;
 int thread_cputime_callback ;
 int * thread_ledger_template ;
 TYPE_1__ thread_ledgers ;

__attribute__((used)) static void
init_thread_ledgers(void) {
 ledger_template_t t;
 int idx;

 assert(thread_ledger_template == ((void*)0));

 if ((t = ledger_template_create("Per-thread ledger")) == ((void*)0))
  panic("couldn't create thread ledger template");

 if ((idx = ledger_entry_add(t, "cpu_time", "sched", "ns")) < 0) {
  panic("couldn't create cpu_time entry for thread ledger template");
 }

 if (ledger_set_callback(t, idx, thread_cputime_callback, ((void*)0), ((void*)0)) < 0) {
      panic("couldn't set thread ledger callback for cpu_time entry");
 }

 thread_ledgers.cpu_time = idx;

 ledger_template_complete(t);
 thread_ledger_template = t;
}
