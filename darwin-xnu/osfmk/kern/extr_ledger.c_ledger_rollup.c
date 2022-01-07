
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ l_template; int l_size; } ;


 int KERN_SUCCESS ;
 int assert (int) ;
 int ledger_rollup_entry (TYPE_1__*,TYPE_1__*,int) ;

kern_return_t
ledger_rollup(ledger_t to_ledger, ledger_t from_ledger)
{
 int i;

 assert(to_ledger->l_template == from_ledger->l_template);

 for (i = 0; i < to_ledger->l_size; i++) {
  ledger_rollup_entry(to_ledger, from_ledger, i);
 }

 return (KERN_SUCCESS);
}
