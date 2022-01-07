
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_destruct_special_reply_port_rights_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;



 int mach_port_deallocate (int ,int ) ;
 int mach_port_destruct (int ,int ,int,int ) ;
 int mach_task_self () ;

kern_return_t
thread_destruct_special_reply_port(
  mach_port_name_t port,
  thread_destruct_special_reply_port_rights_t rights)
{
 switch (rights) {
 case 130:
  return mach_port_destruct(mach_task_self(), port, -1, 0);

 case 129:
  return mach_port_destruct(mach_task_self(), port, 0, 0);

 case 128:
  return mach_port_deallocate(mach_task_self(), port);

 default:
  return KERN_INVALID_ARGUMENT;
 }
}
