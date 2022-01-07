
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;
struct TYPE_5__ {TYPE_1__* exc_actions; int lock; } ;
struct TYPE_4__ {int * label; scalar_t__ port; } ;


 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 int HOST_PORT ;
 int HOST_PRIV_PORT ;
 int HOST_SECURITY_PORT ;
 int IKOT_HOST ;
 int IKOT_HOST_PRIV ;
 int IKOT_HOST_SECURITY ;
 scalar_t__ IP_NULL ;
 int host_notify_lock_attr ;
 int host_notify_lock_grp ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int ipc_port_make_send (scalar_t__) ;
 int ipc_processor_enable (int ) ;
 int ipc_processor_init (int ) ;
 int ipc_pset_enable (int *) ;
 int ipc_pset_init (int *) ;
 int kernel_set_special_port (TYPE_2__*,int ,int ) ;
 int lck_mtx_init (int *,int *,int *) ;
 int master_processor ;
 int panic (char*) ;
 int pset0 ;
 TYPE_2__ realhost ;

void ipc_host_init(void)
{
 ipc_port_t port;
 int i;

 lck_mtx_init(&realhost.lock, &host_notify_lock_grp, &host_notify_lock_attr);




 port = ipc_port_alloc_kernel();
 if (port == IP_NULL)
  panic("ipc_host_init");

 ipc_kobject_set(port, (ipc_kobject_t) &realhost, IKOT_HOST_SECURITY);
 kernel_set_special_port(&realhost, HOST_SECURITY_PORT,
    ipc_port_make_send(port));

 port = ipc_port_alloc_kernel();
 if (port == IP_NULL)
  panic("ipc_host_init");

 ipc_kobject_set(port, (ipc_kobject_t) &realhost, IKOT_HOST);
 kernel_set_special_port(&realhost, HOST_PORT,
    ipc_port_make_send(port));

 port = ipc_port_alloc_kernel();
 if (port == IP_NULL)
  panic("ipc_host_init");

 ipc_kobject_set(port, (ipc_kobject_t) &realhost, IKOT_HOST_PRIV);
 kernel_set_special_port(&realhost, HOST_PRIV_PORT,
    ipc_port_make_send(port));



 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
   realhost.exc_actions[i].port = IP_NULL;



   realhost.exc_actions[i].label = ((void*)0);
  }




 ipc_pset_init(&pset0);
 ipc_pset_enable(&pset0);




 ipc_processor_init(master_processor);
 ipc_processor_enable(master_processor);
}
