
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int queue_entry_t ;
typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* host_notify_t ;
struct TYPE_11__ {TYPE_1__* port; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_HOST_NOTIFY ;
 int IKOT_NONE ;
 int IKO_NULL ;
 int assert (int) ;
 int host_notify_lock ;
 int host_notify_zone ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_kobject_set_atomically (TYPE_1__*,int ,int ) ;
 int ipc_port_release_sonce (TYPE_1__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int remqueue (int ) ;
 int zfree (int ,TYPE_2__*) ;

void
host_notify_port_destroy(
 ipc_port_t port)
{
 host_notify_t entry;

 lck_mtx_lock(&host_notify_lock);

 ip_lock(port);
 if (ip_kotype(port) == IKOT_HOST_NOTIFY) {
  entry = (host_notify_t)port->ip_kobject;
  assert(entry != ((void*)0));
  ipc_kobject_set_atomically(port, IKO_NULL, IKOT_NONE);
  ip_unlock(port);

  assert(entry->port == port);
  remqueue((queue_entry_t)entry);
  lck_mtx_unlock(&host_notify_lock);
  zfree(host_notify_zone, entry);

  ipc_port_release_sonce(port);
  return;
 }
 ip_unlock(port);

 lck_mtx_unlock(&host_notify_lock);
}
