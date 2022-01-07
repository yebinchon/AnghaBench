
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
typedef TYPE_1__* mnl_msg_t ;
typedef int ipc_kmsg_t ;
struct TYPE_4__ {int cmd; } ;




 int ipc_kmsg_free (int ) ;
 int mnl_msg_free (TYPE_1__*,int ) ;

void
flipc_msg_free(mnl_msg_t msg,
               uint32_t flags)
{
    switch (msg->cmd) {
        case 129:
        case 128:
            ipc_kmsg_free(*(ipc_kmsg_t*)((vm_offset_t)msg-sizeof(vm_offset_t)));
            break;

        default:
            mnl_msg_free(msg, flags);
            break;
    }
}
