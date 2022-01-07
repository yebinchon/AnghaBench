
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct mnl_msg {int dummy; } ;
struct flipc_ack_msg {int dummy; } ;
typedef int msg ;
typedef int mnl_name_t ;
typedef TYPE_4__* mach_node_t ;
typedef void* mach_node_id_t ;
typedef int mach_msg_return_t ;
struct TYPE_31__ {int msgh_size; int msgh_id; void* msgh_voucher_port; void* msgh_local_port; TYPE_6__* msgh_remote_port; int msgh_bits; } ;
typedef TYPE_5__ mach_msg_header_t ;
typedef int kern_return_t ;
typedef TYPE_6__* ipc_port_t ;
typedef TYPE_7__* ipc_mqueue_t ;
typedef TYPE_8__* ipc_kmsg_t ;
typedef TYPE_9__* flipc_port_t ;
typedef TYPE_10__* flipc_ack_msg_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_27__ {int name; } ;
struct TYPE_35__ {TYPE_6__* lport; TYPE_1__ obj; } ;
struct TYPE_34__ {TYPE_5__* ikm_header; } ;
struct TYPE_33__ {TYPE_9__* imq_fport; } ;
struct TYPE_32__ {TYPE_7__ ip_messages; } ;
struct TYPE_28__ {void* node_id; } ;
struct TYPE_30__ {TYPE_6__* control_port; TYPE_2__ info; scalar_t__ active; } ;
struct TYPE_29__ {int size; scalar_t__ options; int object; void* node_id; scalar_t__ flags; scalar_t__ qos; int cmd; int sub; } ;
struct TYPE_26__ {int msg_count; TYPE_3__ mnl; void* resend_to; } ;


 int FLIPC_CMD_ACKMESSAGE ;
 int FLIPC_CMD_ID ;
 int FLIPC_CMD_NAKMESSAGE ;
 int FPORT_VALID (TYPE_9__*) ;
 void* HOST_LOCAL_NODE ;
 TYPE_6__* IP_NULL ;
 int IP_VALID (TYPE_6__*) ;
 int MACH_MSGH_BITS_SET (int ,int ,int ,int ) ;
 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_NODE_ID_VALID (void*) ;
 int MACH_NODE_LOCK (TYPE_4__*) ;
 int MACH_NODE_SUB_FLIPC ;
 int MACH_NODE_UNLOCK (TYPE_4__*) ;
 int MACH_NODE_VALID (TYPE_4__*) ;
 void* MACH_PORT_NULL ;
 int MACH_SEND_KERNEL_DEFAULT ;
 scalar_t__ MAX_TRAILER_SIZE ;
 int MNL_NAME_NULL ;
 int MNL_NAME_VALID (int ) ;
 int assert (int) ;
 int imq_lock (TYPE_7__*) ;
 int ip_lock (TYPE_6__*) ;
 int ip_unlock (TYPE_6__*) ;
 TYPE_8__* ipc_kmsg_alloc (scalar_t__) ;
 int ipc_kmsg_send (TYPE_8__*,int ,int ) ;
 int ipc_mqueue_send (TYPE_7__*,TYPE_8__*,int ,int ) ;

void
flipc_msg_ack(mach_node_t node,
              ipc_mqueue_t mqueue,
              boolean_t delivered)
{
    flipc_port_t fport = mqueue->imq_fport;

    assert(FPORT_VALID(fport));
    assert(MACH_NODE_VALID(node));

    mnl_name_t name = MNL_NAME_NULL;
    mach_node_id_t nid = HOST_LOCAL_NODE;
    ipc_port_t ack_port = IP_NULL;

    ip_lock(fport->lport);
    name = fport->obj.name;
    ip_unlock(fport->lport);

    if (!MNL_NAME_VALID(name))
        return;

    MACH_NODE_LOCK(node);
    if (node->active) {
        nid = node->info.node_id;
        ack_port = node->control_port;
    }
    MACH_NODE_UNLOCK(node);

    if ( !IP_VALID(ack_port) || !MACH_NODE_ID_VALID(nid) )
        return;


    ipc_kmsg_t kmsg = ipc_kmsg_alloc(sizeof(struct flipc_ack_msg) + MAX_TRAILER_SIZE);
    assert((unsigned long long)kmsg >= 4ULL);
    mach_msg_header_t *msg = kmsg->ikm_header;


    msg->msgh_bits = MACH_MSGH_BITS_SET(0, 0, 0, 0);
    msg->msgh_size = sizeof(msg);
    msg->msgh_remote_port = ack_port;
    msg->msgh_local_port = MACH_PORT_NULL;
    msg->msgh_voucher_port = MACH_PORT_NULL;
    msg->msgh_id = FLIPC_CMD_ID;


    flipc_ack_msg_t fmsg = (flipc_ack_msg_t)(&msg[1]);
    fmsg->resend_to = HOST_LOCAL_NODE;
    fmsg->msg_count = 1;


    fmsg->mnl.sub = MACH_NODE_SUB_FLIPC;
    fmsg->mnl.cmd = delivered ? FLIPC_CMD_ACKMESSAGE : FLIPC_CMD_NAKMESSAGE;
    fmsg->mnl.qos = 0;
    fmsg->mnl.flags = 0;
    fmsg->mnl.node_id = nid;
    fmsg->mnl.object = name;
    fmsg->mnl.options = 0;
    fmsg->mnl.size = sizeof(struct flipc_ack_msg) - sizeof(struct mnl_msg);
    kern_return_t kr;
    kr = ipc_kmsg_send(kmsg,
                       MACH_SEND_KERNEL_DEFAULT,
                       MACH_MSG_TIMEOUT_NONE);

}
