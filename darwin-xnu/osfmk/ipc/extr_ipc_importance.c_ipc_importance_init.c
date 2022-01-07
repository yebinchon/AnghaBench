
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_buf ;
struct ipc_importance_task {int dummy; } ;
struct ipc_importance_inherit {int dummy; } ;
typedef int natural_t ;
typedef int mach_voucher_attr_value_handle_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_KEY_IMPORTANCE ;
 scalar_t__ PE_parse_boot_argn (char*,char*,int) ;
 int TRUE ;
 int Z_NOENCRYPT ;
 int global_iit_alloc_queue ;
 int ipc_importance_control ;
 int ipc_importance_inherit_zone ;
 int ipc_importance_interactive_receiver ;
 int ipc_importance_lock_init () ;
 int ipc_importance_manager ;
 int ipc_importance_task_zone ;
 scalar_t__ ipc_register_well_known_mach_voucher_attr_manager (int *,int ,int ,int *) ;
 int printf (char*,scalar_t__) ;
 int queue_init (int *) ;
 int task_max ;
 int thread_max ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
ipc_importance_init(void)
{
 natural_t ipc_importance_max = (task_max + thread_max) * 2;
 char temp_buf[26];
 kern_return_t kr;

 if (PE_parse_boot_argn("imp_interactive_receiver", temp_buf, sizeof(temp_buf))) {
  ipc_importance_interactive_receiver = TRUE;
 }

 ipc_importance_task_zone = zinit(sizeof(struct ipc_importance_task),
      ipc_importance_max * sizeof(struct ipc_importance_task),
      sizeof(struct ipc_importance_task),
      "ipc task importance");
 zone_change(ipc_importance_task_zone, Z_NOENCRYPT, TRUE);

 ipc_importance_inherit_zone = zinit(sizeof(struct ipc_importance_inherit),
         ipc_importance_max * sizeof(struct ipc_importance_inherit),
         sizeof(struct ipc_importance_inherit),
         "ipc importance inherit");
 zone_change(ipc_importance_inherit_zone, Z_NOENCRYPT, TRUE);







 ipc_importance_lock_init();

 kr = ipc_register_well_known_mach_voucher_attr_manager(&ipc_importance_manager,
      (mach_voucher_attr_value_handle_t)0,
      MACH_VOUCHER_ATTR_KEY_IMPORTANCE,
      &ipc_importance_control);
 if (KERN_SUCCESS != kr)
  printf("Voucher importance manager register returned %d", kr);
}
