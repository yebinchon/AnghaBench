
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_voucher_attr_control {int dummy; } ;
struct ipc_voucher {int dummy; } ;
typedef int natural_t ;
typedef size_t iv_index_t ;


 size_t IV_HASH_BUCKETS ;
 int MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ;
 int TRUE ;
 int Z_NOENCRYPT ;
 int ipc_voucher_attr_control_zone ;
 int ipc_voucher_zone ;
 int ivgt_lock_init () ;
 int * ivht_bucket ;
 int ivht_lock_init () ;
 int queue_init (int *) ;
 int task_max ;
 int thread_max ;
 int user_data_attr_manager_init () ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
ipc_voucher_init(void)
{
 natural_t ipc_voucher_max = (task_max + thread_max) * 2;
 natural_t attr_manager_max = MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN;
 iv_index_t i;

 ipc_voucher_zone = zinit(sizeof(struct ipc_voucher),
     ipc_voucher_max * sizeof(struct ipc_voucher),
     sizeof(struct ipc_voucher),
     "ipc vouchers");
 zone_change(ipc_voucher_zone, Z_NOENCRYPT, TRUE);

 ipc_voucher_attr_control_zone = zinit(sizeof(struct ipc_voucher_attr_control),
     attr_manager_max * sizeof(struct ipc_voucher_attr_control),
     sizeof(struct ipc_voucher_attr_control),
     "ipc voucher attr controls");
 zone_change(ipc_voucher_attr_control_zone, Z_NOENCRYPT, TRUE);


 ivht_lock_init();
 for (i = 0; i < IV_HASH_BUCKETS; i++)
  queue_init(&ivht_bucket[i]);


 ivgt_lock_init();




}
