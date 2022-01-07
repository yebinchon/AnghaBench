
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ledger_t ;
typedef int ledger_amount_t ;
typedef int kern_return_t ;


 int ledger_debit_thread (int *,int ,int,int ) ;

kern_return_t
ledger_debit_nocheck(ledger_t ledger, int entry, ledger_amount_t amount)
{
 return ledger_debit_thread(((void*)0), ledger, entry, amount);
}
