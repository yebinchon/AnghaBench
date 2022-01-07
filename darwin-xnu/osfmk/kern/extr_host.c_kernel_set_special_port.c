
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef TYPE_1__* host_priv_t ;
struct TYPE_5__ {int * special; } ;


 int HOST_NODE_PORT ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_NOT_SUPPORTED ;
 int KERN_SUCCESS ;
 int host_lock (TYPE_1__*) ;
 int host_unlock (TYPE_1__*) ;
 int ipc_port_release_send (int ) ;
 int is_valid_host_special_port (int) ;
 int mach_node_port_changed () ;
 int panic (char*,int) ;

kern_return_t
kernel_set_special_port(host_priv_t host_priv, int id, ipc_port_t port)
{
 ipc_port_t old_port;

 if (!is_valid_host_special_port(id))
  panic("attempted to set invalid special port %d", id);


 if (id == HOST_NODE_PORT)
  return (KERN_NOT_SUPPORTED);


 host_lock(host_priv);
 old_port = host_priv->special[id];
 host_priv->special[id] = port;
 host_unlock(host_priv);






 if (IP_VALID(old_port))
  ipc_port_release_send(old_port);
 return (KERN_SUCCESS);
}
