
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef TYPE_8__* mnl_msg_t ;
typedef void* mach_port_t ;
typedef scalar_t__ mach_port_name_t ;
typedef int mach_msg_size_t ;
struct TYPE_26__ {scalar_t__ msgh_voucher_port; void* msgh_local_port; void* msgh_remote_port; } ;
typedef TYPE_9__ mach_msg_header_t ;
typedef int kern_return_t ;
typedef TYPE_10__* ipc_kmsg_t ;
struct TYPE_25__ {scalar_t__ object; int size; scalar_t__ qos; int node_id; int cmd; int sub; } ;
struct TYPE_24__ {int msgh_bits; TYPE_6__* msgh_remote_port; } ;
struct TYPE_20__ {TYPE_2__* fport; } ;
struct TYPE_21__ {TYPE_3__ port; } ;
struct TYPE_22__ {TYPE_4__ data; } ;
struct TYPE_23__ {TYPE_5__ ip_messages; } ;
struct TYPE_18__ {scalar_t__ name; } ;
struct TYPE_19__ {TYPE_1__ obj; } ;
struct TYPE_17__ {TYPE_7__* ikm_header; } ;


 int FLIPC_CMD_IPCMESSAGE ;
 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_NODE_SUB_FLIPC ;
 TYPE_8__* MNL_MSG_NULL ;
 scalar_t__ MNL_MSG_PAYLOAD (TYPE_8__*) ;
 scalar_t__ MNL_NAME_NULL ;
 int bcopy (void const*,void*,int ) ;
 int flipc_msg_size_from_kmsg (TYPE_10__*) ;
 int localnode_id ;
 TYPE_8__* mnl_msg_alloc (int ,int ) ;
 scalar_t__ mnl_name_from_port (void*) ;
 int printf (char*) ;

__attribute__((used)) static kern_return_t mnl_msg_from_kmsg(ipc_kmsg_t kmsg, mnl_msg_t *fmsgp)
{
    if (kmsg->ikm_header->msgh_bits & MACH_MSGH_BITS_COMPLEX) {
        printf("mnl_msg_from_kmsg(): Complex messages not supported.");
        return KERN_FAILURE;
    }

    mach_msg_size_t fsize = flipc_msg_size_from_kmsg(kmsg);

    mnl_msg_t fmsg = mnl_msg_alloc(fsize, 0);

    if (fmsg == MNL_MSG_NULL)
        return KERN_RESOURCE_SHORTAGE;


    fmsg->sub = MACH_NODE_SUB_FLIPC;
    fmsg->cmd = FLIPC_CMD_IPCMESSAGE;
    fmsg->node_id = localnode_id;
    fmsg->qos = 0;
    fmsg->size = fsize;
    fmsg->object = kmsg->ikm_header->msgh_remote_port->ip_messages.data.port.fport->obj.name;


    bcopy((const void*)kmsg->ikm_header, (void*)MNL_MSG_PAYLOAD(fmsg), fsize);


    mach_msg_header_t *mmsg = (mach_msg_header_t*)MNL_MSG_PAYLOAD(fmsg);
    mmsg->msgh_remote_port = (mach_port_t)fmsg->object;
    mmsg->msgh_local_port = (mach_port_t)
    mnl_name_from_port(mmsg->msgh_local_port);
    mmsg->msgh_voucher_port = (mach_port_name_t)MNL_NAME_NULL;

    *fmsgp = (mnl_msg_t)fmsg;

    return KERN_SUCCESS;
}
