
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* mach_node_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {int node_id; } ;
struct TYPE_7__ {TYPE_1__ info; int bootstrap_port; } ;


 int IP_VALID (int ) ;
 int MACH_NODE_VALID (TYPE_2__*) ;
 int MNL_NAME_BOOTSTRAP (int ) ;
 int assert (int ) ;
 int flipc_port_create (int ,TYPE_2__*,int ) ;
 int ip_lock (int ) ;
 int ip_unlock (int ) ;

kern_return_t
flipc_node_prepare(mach_node_t node)
{
    kern_return_t kr;

    assert(MACH_NODE_VALID(node));
    ipc_port_t bs_port = node->bootstrap_port;
    assert(IP_VALID(bs_port));

    ip_lock(bs_port);

    kr = flipc_port_create(bs_port,
                           node,
                           MNL_NAME_BOOTSTRAP(node->info.node_id));
    ip_unlock(bs_port);

    return kr;
}
