
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_msg_size_t ;
typedef int mach_msg_header_t ;
typedef TYPE_1__* ipc_kmsg_t ;
struct TYPE_4__ {scalar_t__ ikm_header; } ;


 int ipc_kmsg_free (TYPE_1__*) ;
 int memcpy (void*,void const*,int ) ;

void
ipc_kmsg_put_to_kernel(
 mach_msg_header_t *msg,
 ipc_kmsg_t kmsg,
 mach_msg_size_t size)
{
 (void) memcpy((void *) msg, (const void *) kmsg->ikm_header, size);

 ipc_kmsg_free(kmsg);
}
