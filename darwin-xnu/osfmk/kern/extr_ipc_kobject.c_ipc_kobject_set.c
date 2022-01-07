
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;
typedef int ipc_kobject_type_t ;
typedef int ipc_kobject_t ;


 int ip_lock (int ) ;
 int ip_unlock (int ) ;
 int ipc_kobject_set_atomically (int ,int ,int ) ;

void
ipc_kobject_set(
 ipc_port_t port,
 ipc_kobject_t kobject,
 ipc_kobject_type_t type)
{
 ip_lock(port);
 ipc_kobject_set_atomically(port, kobject, type);
 ip_unlock(port);
}
