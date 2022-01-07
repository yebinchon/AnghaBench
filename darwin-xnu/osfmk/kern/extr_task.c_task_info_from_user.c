
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int task_info_t ;
typedef int task_flavor_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int TASK_DYLD_INFO ;
 int convert_port_to_task (int ) ;
 int convert_port_to_task_name (int ) ;
 int task_deallocate (int ) ;
 int task_info (int ,int ,int ,int *) ;

kern_return_t
task_info_from_user(
 mach_port_t task_port,
 task_flavor_t flavor,
 task_info_t task_info_out,
 mach_msg_type_number_t *task_info_count)
{
 task_t task;
 kern_return_t ret;

 if (flavor == TASK_DYLD_INFO)
  task = convert_port_to_task(task_port);
 else
  task = convert_port_to_task_name(task_port);

 ret = task_info(task, flavor, task_info_out, task_info_count);

 task_deallocate(task);

 return ret;
}
