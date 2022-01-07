
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_copy_t ;
typedef int task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ dyld_kernel_image_info_array_t ;


 int DBG_DYLD_UUID_MAP_A ;
 int kdebug_trace_dyld (int ,int ,int ,int ) ;

kern_return_t
task_register_dyld_image_infos(task_t task,
                               dyld_kernel_image_info_array_t infos_copy,
                               mach_msg_type_number_t infos_len)
{
 return kdebug_trace_dyld(task, DBG_DYLD_UUID_MAP_A,
  (vm_map_copy_t)infos_copy, infos_len);
}
