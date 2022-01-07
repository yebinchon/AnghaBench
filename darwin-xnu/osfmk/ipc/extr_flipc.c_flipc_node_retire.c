
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mach_node_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_4__ {int bootstrap_port; } ;


 scalar_t__ IP_VALID (int ) ;
 int KERN_NODE_DOWN ;
 int KERN_SUCCESS ;
 int MACH_NODE_VALID (TYPE_1__*) ;
 int flipc_port_destroy (int ) ;
 int ip_lock (int ) ;
 int ip_unlock (int ) ;

kern_return_t
flipc_node_retire(mach_node_t node)
{
    if (!MACH_NODE_VALID(node))
        return KERN_NODE_DOWN;

    ipc_port_t bs_port = node->bootstrap_port;
    if (IP_VALID(bs_port)) {
        ip_lock(bs_port);
        flipc_port_destroy(bs_port);
        ip_unlock(bs_port);
    }

    return KERN_SUCCESS;
}
