
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mnl_name_t ;
typedef int ipc_port_t ;
typedef TYPE_1__* flipc_port_t ;
struct TYPE_3__ {int lport; } ;


 scalar_t__ FPORT_VALID (TYPE_1__*) ;
 int IP_NULL ;
 scalar_t__ MNL_NAME_VALID (int ) ;
 int mnl_obj_lookup (int ) ;

__attribute__((used)) static inline ipc_port_t mnl_name_to_port(mnl_name_t name)
{
    ipc_port_t lport = IP_NULL;

    if (MNL_NAME_VALID(name)) {
        flipc_port_t fport = (flipc_port_t)mnl_obj_lookup(name);
        if (FPORT_VALID(fport))
            lport = fport->lport;
    }
    return lport;
}
