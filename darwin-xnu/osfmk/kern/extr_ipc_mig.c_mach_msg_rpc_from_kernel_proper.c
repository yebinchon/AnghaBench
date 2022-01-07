
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_size_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_header_t ;


 int FALSE ;
 int mach_msg_rpc_from_kernel_body (int *,int ,int ,int ) ;

mach_msg_return_t
mach_msg_rpc_from_kernel_proper(
 mach_msg_header_t *msg,
 mach_msg_size_t send_size,
 mach_msg_size_t rcv_size)
{
    return mach_msg_rpc_from_kernel_body(msg, send_size, rcv_size, FALSE);
}
