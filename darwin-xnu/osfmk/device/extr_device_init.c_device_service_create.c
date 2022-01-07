
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_kobject_t ;


 int HOST_IO_MASTER_PORT ;
 int IKOT_MASTER_DEVICE ;
 scalar_t__ IP_NULL ;
 int datadev_init () ;
 int dev_lck_attr ;
 int dev_lck_grp ;
 int dev_lck_grp_attr ;
 int device_pager_init () ;
 int ds_init () ;
 int host_priv_self () ;
 int io_done_thread ;
 int iokit_obj_to_port_binding_lock ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int ipc_port_make_send (scalar_t__) ;
 int kernel_set_special_port (int ,int ,int ) ;
 int kernel_task ;
 int kernel_thread (int ,int ,char*) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int master_device_kobject ;
 scalar_t__ master_device_port ;
 int net_io_init () ;
 int net_thread ;
 int panic (char*) ;

void
device_service_create(void)
{
 master_device_port = ipc_port_alloc_kernel();
 if (master_device_port == IP_NULL)
     panic("can't allocate master device port");

 ipc_kobject_set(master_device_port, (ipc_kobject_t)&master_device_kobject, IKOT_MASTER_DEVICE);
 kernel_set_special_port(host_priv_self(), HOST_IO_MASTER_PORT,
    ipc_port_make_send(master_device_port));


 dev_lck_grp_attr= lck_grp_attr_alloc_init();
 dev_lck_grp = lck_grp_alloc_init("device", dev_lck_grp_attr);


 dev_lck_attr = lck_attr_alloc_init();


 lck_mtx_init(&iokit_obj_to_port_binding_lock, dev_lck_grp, dev_lck_attr);
}
