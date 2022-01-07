
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_space {int dummy; } ;
struct ipc_pset {int dummy; } ;
struct ipc_port {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 int IKM_SAVED_KMSG_SIZE ;
 size_t IOT_PORT ;
 size_t IOT_PORT_SET ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_QLIMIT_DEFAULT ;
 int TRUE ;
 int Z_CACHING_ENABLED ;
 int Z_CALLERACCT ;
 int Z_NOENCRYPT ;
 int assert (int) ;
 int host_notify_init () ;
 int ipc_importance_init () ;
 int ipc_kmsg_zone ;
 int ipc_lck_attr ;
 int ipc_lck_grp ;
 int ipc_lck_grp_attr ;
 int * ipc_object_zones ;
 int ipc_port_debug_init () ;
 int ipc_port_max ;
 int ipc_port_multiple_lock_init () ;
 scalar_t__ ipc_port_timestamp_data ;
 int ipc_pset_max ;
 scalar_t__ ipc_space_create_special (int *) ;
 int ipc_space_kernel ;
 int ipc_space_max ;
 int ipc_space_reply ;
 int ipc_space_zone ;
 int ipc_table_init () ;
 int ipc_voucher_init () ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int mig_init () ;
 int mk_timer_init () ;
 int semaphore_init () ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
ipc_bootstrap(void)
{
 kern_return_t kr;

 lck_grp_attr_setdefault(&ipc_lck_grp_attr);
 lck_grp_init(&ipc_lck_grp, "ipc", &ipc_lck_grp_attr);
 lck_attr_setdefault(&ipc_lck_attr);

 ipc_port_multiple_lock_init();

 ipc_port_timestamp_data = 0;



 ipc_space_zone = zinit(sizeof(struct ipc_space),
          ipc_space_max * sizeof(struct ipc_space),
          sizeof(struct ipc_space),
          "ipc spaces");
 zone_change(ipc_space_zone, Z_NOENCRYPT, TRUE);




 ipc_object_zones[IOT_PORT] =
  zinit(sizeof(struct ipc_port),
        ipc_port_max * sizeof(struct ipc_port),
        sizeof(struct ipc_port),
        "ipc ports");

 zone_change(ipc_object_zones[IOT_PORT], Z_CALLERACCT, FALSE);
 zone_change(ipc_object_zones[IOT_PORT], Z_NOENCRYPT, TRUE);

 ipc_object_zones[IOT_PORT_SET] =
  zinit(sizeof(struct ipc_pset),
        ipc_pset_max * sizeof(struct ipc_pset),
        sizeof(struct ipc_pset),
        "ipc port sets");
 zone_change(ipc_object_zones[IOT_PORT_SET], Z_NOENCRYPT, TRUE);





 ipc_kmsg_zone = zinit(IKM_SAVED_KMSG_SIZE,
         ipc_port_max * MACH_PORT_QLIMIT_DEFAULT *
         IKM_SAVED_KMSG_SIZE,
         IKM_SAVED_KMSG_SIZE,
         "ipc kmsgs");
 zone_change(ipc_kmsg_zone, Z_CALLERACCT, FALSE);
 zone_change(ipc_kmsg_zone, Z_CACHING_ENABLED, TRUE);



 kr = ipc_space_create_special(&ipc_space_kernel);
 assert(kr == KERN_SUCCESS);


 kr = ipc_space_create_special(&ipc_space_reply);
 assert(kr == KERN_SUCCESS);






 mig_init();
 ipc_table_init();
 ipc_voucher_init();





 semaphore_init();
 mk_timer_init();
 host_notify_init();
}
