
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct flipc_port {int dummy; } ;
typedef int mnl_obj_t ;
typedef int mnl_name_t ;
typedef scalar_t__ mach_node_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_3__* ipc_port_t ;
typedef TYPE_4__* flipc_port_t ;
struct TYPE_12__ {int name; } ;
struct TYPE_15__ {TYPE_3__* lport; int state; scalar_t__ hostnode; TYPE_1__ obj; } ;
struct TYPE_13__ {TYPE_4__* imq_fport; } ;
struct TYPE_14__ {TYPE_2__ ip_messages; } ;


 TYPE_4__* FPORT_NULL ;
 int FPORT_STATE_PRINCIPAL ;
 int FPORT_STATE_PROXY ;
 int FPORT_VALID (TYPE_4__*) ;
 TYPE_3__* IP_NULL ;
 int IP_VALID (TYPE_3__*) ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_NODE_VALID (scalar_t__) ;
 int MNL_NAME_VALID (int ) ;
 int assert (int) ;
 int bzero (TYPE_4__*,int) ;
 int flipc_port_zone ;
 scalar_t__ localnode ;
 scalar_t__ mnl_obj_insert (int ) ;
 int zalloc (int ) ;
 int zfree (int ,TYPE_4__*) ;

__attribute__((used)) static kern_return_t
flipc_port_create(ipc_port_t lport, mach_node_t node, mnl_name_t name)
{

    assert(IP_VALID(lport));
    assert(MACH_NODE_VALID(node));
    assert(MNL_NAME_VALID(name));
    assert(!FPORT_VALID(lport->ip_messages.imq_fport));


    flipc_port_t fport = (flipc_port_t) zalloc(flipc_port_zone);
    if (!FPORT_VALID(fport))
        return KERN_RESOURCE_SHORTAGE;
    bzero(fport, sizeof(struct flipc_port));
    fport->obj.name = name;
    fport->hostnode = node;
    if (node == localnode)
        fport->state = FPORT_STATE_PRINCIPAL;
    else
        fport->state = FPORT_STATE_PROXY;


    fport->lport = lport;
    lport->ip_messages.imq_fport = fport;


    kern_return_t kr = mnl_obj_insert((mnl_obj_t)fport);
    if (kr != KERN_SUCCESS) {
        lport->ip_messages.imq_fport = FPORT_NULL;
        fport->lport = IP_NULL;
        zfree(flipc_port_zone, fport);
    }

    return kr;
}
