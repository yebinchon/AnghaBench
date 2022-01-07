
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_interval {scalar_t__ wi_port; } ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;


 int IKOT_WORK_INTERVAL ;
 scalar_t__ IP_NULL ;
 int IP_VALID (scalar_t__) ;
 int assert (int) ;
 int ip_lock (scalar_t__) ;
 int ipc_kobject_set_atomically (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;
 scalar_t__ ipc_port_make_sonce_locked (scalar_t__) ;
 int ipc_port_nsrequest (scalar_t__,int,scalar_t__,scalar_t__*) ;
 int panic (char*) ;

__attribute__((used)) static ipc_port_t
work_interval_port_alloc(struct work_interval *work_interval)
{
 ipc_port_t work_interval_port = ipc_port_alloc_kernel();

 if (work_interval_port == IP_NULL)
  panic("failed to allocate work interval port");

 assert(work_interval->wi_port == IP_NULL);

 ip_lock(work_interval_port);
 ipc_kobject_set_atomically(work_interval_port, (ipc_kobject_t)work_interval,
                            IKOT_WORK_INTERVAL);

 ipc_port_t notify_port = ipc_port_make_sonce_locked(work_interval_port);
 ipc_port_t old_notify_port = IP_NULL;
 ipc_port_nsrequest(work_interval_port, 1, notify_port, &old_notify_port);


 assert(old_notify_port == IP_NULL);


 ipc_port_t send_port = ipc_port_make_send(work_interval_port);
 assert(IP_VALID(send_port));

 work_interval->wi_port = work_interval_port;

 return send_port;
}
