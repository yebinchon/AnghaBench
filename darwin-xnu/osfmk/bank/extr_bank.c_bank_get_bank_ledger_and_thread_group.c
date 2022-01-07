
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_group {int dummy; } ;
typedef int ledger_t ;
typedef int kern_return_t ;
typedef int ipc_voucher_t ;
typedef int bank_account_t ;


 int FALSE ;
 int KERN_SUCCESS ;
 int bank_get_bank_account_ledger (int ) ;
 struct thread_group* bank_get_bank_account_thread_group (int ) ;
 struct thread_group* bank_get_bank_task_thread_group (int ) ;
 int bank_get_voucher_bank_account (int ) ;
 int current_task () ;
 int get_bank_task_context (int ,int ) ;

kern_return_t
bank_get_bank_ledger_and_thread_group(
 ipc_voucher_t voucher,
 ledger_t *bankledger,
 struct thread_group **banktg)
{
 bank_account_t bank_account;
 struct thread_group *thread_group = ((void*)0);

 bank_account = bank_get_voucher_bank_account(voucher);
 *bankledger = bank_get_bank_account_ledger(bank_account);
 thread_group = bank_get_bank_account_thread_group(bank_account);


 if (thread_group == bank_get_bank_task_thread_group(
   get_bank_task_context(current_task(), FALSE))) {
  thread_group = ((void*)0);
 }
 *banktg = thread_group;
 return KERN_SUCCESS;
}
