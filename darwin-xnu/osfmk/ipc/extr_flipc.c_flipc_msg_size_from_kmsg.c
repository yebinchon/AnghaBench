
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_msg_size_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_5__ {TYPE_1__* ikm_header; } ;
struct TYPE_4__ {int msgh_bits; int msgh_size; } ;


 int MACH_MSGH_BITS_COMPLEX ;
 int PE_enter_debugger (char*) ;

__attribute__((used)) static mach_msg_size_t flipc_msg_size_from_kmsg(ipc_kmsg_t kmsg)
{
    mach_msg_size_t fsize = kmsg->ikm_header->msgh_size;

    if (kmsg->ikm_header->msgh_bits & MACH_MSGH_BITS_COMPLEX)
        PE_enter_debugger("flipc_msg_size_from_kmsg(): Complex messages not supported.");

    return fsize;
}
