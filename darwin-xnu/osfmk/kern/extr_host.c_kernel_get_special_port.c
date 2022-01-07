
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef TYPE_1__* host_priv_t ;
struct TYPE_5__ {int * special; } ;


 int KERN_SUCCESS ;
 int host_lock (TYPE_1__*) ;
 int host_unlock (TYPE_1__*) ;
 int is_valid_host_special_port (int) ;
 int panic (char*,int) ;

kern_return_t
kernel_get_special_port(host_priv_t host_priv, int id, ipc_port_t * portp)
{
 if (!is_valid_host_special_port(id))
  panic("attempted to get invalid special port %d", id);

 host_lock(host_priv);
 *portp = host_priv->special[id];
 host_unlock(host_priv);
 return (KERN_SUCCESS);
}
