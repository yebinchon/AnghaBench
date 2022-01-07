
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bank_task {int dummy; } ;
struct bank_account {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_KEY_BANK ;
 int MAX_BANK_ACCOUNT ;
 int MAX_BANK_TASK ;
 void* bank_account_zone ;
 int bank_accounts_list ;
 int bank_accounts_list_lock ;
 int bank_dev_lock_attr ;
 int bank_dev_lock_grp ;
 int bank_dev_lock_grp_attr ;
 int bank_lock_attr ;
 int bank_lock_grp ;
 int bank_lock_grp_attr ;
 int bank_manager ;
 void* bank_task_zone ;
 int bank_tasks_list ;
 int bank_tasks_list_lock ;
 int bank_voucher_attr_control ;
 int global_bank_task_lock_init () ;
 int init_bank_ledgers () ;
 scalar_t__ ipc_register_well_known_mach_voucher_attr_manager (int *,int ,int ,int *) ;
 int kprintf (char*) ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int panic (char*) ;
 int queue_init (int *) ;
 void* zinit (int,int,int,char*) ;

void
bank_init()
{
 kern_return_t kr = KERN_SUCCESS;

 bank_task_zone = zinit(sizeof(struct bank_task),
                        MAX_BANK_TASK * sizeof(struct bank_task),
                        sizeof(struct bank_task),
                        "bank_task");

 bank_account_zone = zinit(sizeof(struct bank_account),
                        MAX_BANK_ACCOUNT * sizeof(struct bank_account),
                        sizeof(struct bank_account),
                        "bank_account");

 init_bank_ledgers();


 lck_grp_attr_setdefault(&bank_lock_grp_attr);
 lck_grp_init(&bank_lock_grp, "bank_lock", &bank_lock_grp_attr);
 lck_attr_setdefault(&bank_lock_attr);
 global_bank_task_lock_init();
 kr = ipc_register_well_known_mach_voucher_attr_manager(
                 &bank_manager,
                 0,
                 MACH_VOUCHER_ATTR_KEY_BANK,
                 &bank_voucher_attr_control);
 if (kr != KERN_SUCCESS )
  panic("BANK subsystem initialization failed");

 kprintf("BANK subsystem is initialized\n");
 return ;
}
