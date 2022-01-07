
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_node_t ;
typedef int mach_msg_size_t ;
typedef scalar_t__ mach_msg_return_t ;
typedef int mach_msg_header_t ;
typedef TYPE_1__* ipc_kmsg_t ;
struct TYPE_7__ {int ikm_node; } ;


 scalar_t__ MACH_MSG_SUCCESS ;
 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_SEND_KERNEL_DEFAULT ;
 scalar_t__ ipc_kmsg_copyin_from_kernel (TYPE_1__*) ;
 int ipc_kmsg_destroy (TYPE_1__*) ;
 int ipc_kmsg_free (TYPE_1__*) ;
 scalar_t__ ipc_kmsg_get_from_kernel (int *,int ,TYPE_1__**) ;
 scalar_t__ ipc_kmsg_send (TYPE_1__*,int ,int ) ;

__attribute__((used)) static mach_msg_return_t
mach_msg_send_from_remote_kernel(mach_msg_header_t *msg,
                                 mach_msg_size_t send_size,
                                 mach_node_t node)
{
    ipc_kmsg_t kmsg;
    mach_msg_return_t mr;

    mr = ipc_kmsg_get_from_kernel(msg, send_size, &kmsg);
    if (mr != MACH_MSG_SUCCESS)
        return mr;

    mr = ipc_kmsg_copyin_from_kernel(kmsg);
    if (mr != MACH_MSG_SUCCESS) {
        ipc_kmsg_free(kmsg);
        return mr;
    }

    kmsg->ikm_node = node;
    mr = ipc_kmsg_send(kmsg,
                       MACH_SEND_KERNEL_DEFAULT,
                       MACH_MSG_TIMEOUT_NONE);
    if (mr != MACH_MSG_SUCCESS) {
        ipc_kmsg_destroy(kmsg);
    }

    return mr;
}
