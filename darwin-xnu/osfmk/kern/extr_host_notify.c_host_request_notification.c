
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int queue_entry_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_kobject_t ;
typedef scalar_t__ host_t ;
typedef TYPE_2__* host_notify_t ;
typedef size_t host_flavor_t ;
struct TYPE_12__ {TYPE_1__* port; } ;
struct TYPE_11__ {scalar_t__ ip_tempowner; } ;


 size_t HOST_NOTIFY_TYPE_MAX ;
 scalar_t__ HOST_NULL ;
 int IKOT_HOST_NOTIFY ;
 scalar_t__ IKOT_NONE ;
 int IP_VALID (TYPE_1__*) ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int enqueue_tail (int *,int ) ;
 int host_notify_lock ;
 int * host_notify_queue ;
 int host_notify_zone ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_kobject_set_atomically (TYPE_1__*,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,TYPE_2__*) ;

kern_return_t
host_request_notification(
 host_t host,
 host_flavor_t notify_type,
 ipc_port_t port)
{
 host_notify_t entry;

 if (host == HOST_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (!IP_VALID(port))
  return (KERN_INVALID_CAPABILITY);

 if (notify_type > HOST_NOTIFY_TYPE_MAX || notify_type < 0)
  return (KERN_INVALID_ARGUMENT);

 entry = (host_notify_t)zalloc(host_notify_zone);
 if (entry == ((void*)0))
  return (KERN_RESOURCE_SHORTAGE);

 lck_mtx_lock(&host_notify_lock);

 ip_lock(port);
 if (!ip_active(port) || port->ip_tempowner || ip_kotype(port) != IKOT_NONE) {
  ip_unlock(port);

  lck_mtx_unlock(&host_notify_lock);
  zfree(host_notify_zone, entry);

  return (KERN_FAILURE);
 }

 entry->port = port;
 ipc_kobject_set_atomically(port, (ipc_kobject_t)entry, IKOT_HOST_NOTIFY);
 ip_unlock(port);

 enqueue_tail(&host_notify_queue[notify_type], (queue_entry_t)entry);
 lck_mtx_unlock(&host_notify_lock);

 return (KERN_SUCCESS);
}
