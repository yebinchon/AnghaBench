
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct work_interval {int dummy; } ;
typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_NULL ;
 int assert (int ) ;
 scalar_t__ port_name_to_work_interval (scalar_t__,struct work_interval**) ;
 int thread_set_work_interval (int ,struct work_interval*) ;

kern_return_t
kern_work_interval_join(thread_t thread,
                        mach_port_name_t port_name)
{
 struct work_interval *work_interval = ((void*)0);
 kern_return_t kr;

 if (port_name == MACH_PORT_NULL) {

  thread_set_work_interval(thread, ((void*)0));
  return KERN_SUCCESS;
 }

 kr = port_name_to_work_interval(port_name, &work_interval);
 if (kr != KERN_SUCCESS)
  return kr;


 assert(work_interval != ((void*)0));

 thread_set_work_interval(thread, work_interval);



 return KERN_SUCCESS;
}
