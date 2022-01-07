
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_seqno_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_msg_trailer_type_t ;
typedef int mach_msg_trailer_info_t ;
typedef int mach_msg_size_t ;
typedef int mach_msg_id_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_peek (int ,int ,int ,int *,int *,int *,int ,int *) ;

kern_return_t
mach_port_peek(
 ipc_space_t task,
 mach_port_name_t name,
 mach_msg_trailer_type_t trailer_type,
 mach_port_seqno_t *seqnop,
 mach_msg_size_t *msg_sizep,
 mach_msg_id_t *msg_idp,
 mach_msg_trailer_info_t trailer_infop,
 mach_msg_type_number_t *trailer_sizep)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_peek(task, name, trailer_type,
           seqnop, msg_sizep, msg_idp,
           trailer_infop, trailer_sizep);

 return (rv);
}
