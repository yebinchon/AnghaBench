
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_info_tree_name_array_t ;
typedef int ipc_info_space_t ;
typedef int ipc_info_name_array_t ;


 int _kernelrpc_mach_port_space_info (int ,int *,int *,int *,int *,int *) ;

kern_return_t
mach_port_space_info(
 ipc_space_t task,
 ipc_info_space_t *space_info,
 ipc_info_name_array_t *table_info,
 mach_msg_type_number_t *table_infoCnt,
 ipc_info_tree_name_array_t *tree_info,
 mach_msg_type_number_t *tree_infoCnt)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_space_info(task, space_info, table_info,
   table_infoCnt, tree_info, tree_infoCnt);

 return (rv);
}
