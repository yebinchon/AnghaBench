
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;
typedef int exception_behavior_t ;


 int EXCEPTION_DEFAULT ;
 int EXC_MASK_CORPSE_NOTIFY ;
 int EXC_MASK_CRASH ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_EXCEPTION_CODES ;
 int MACH_MSG_SIZE_RELIABLE ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int T_FAIL (char*,int ,scalar_t__) ;
 int dispatch_semaphore_signal (int ) ;
 int mach_error_string (scalar_t__) ;
 int mach_exc_server ;
 scalar_t__ mach_msg_server (int ,int ,int ,int ) ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 scalar_t__ mach_port_insert_right (int ,int ,int ,int ) ;
 int mach_task_self () ;
 int sync_sema ;
 scalar_t__ task_set_exception_ports (int ,int,int ,int ,int ) ;

__attribute__((used)) static void *
exc_handler(void * arg)
{
#pragma unused(arg)
 kern_return_t kret;
 mach_port_t exception_port;

 kret = mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE, &exception_port);
 if (kret != KERN_SUCCESS)
  T_FAIL("mach_port_allocate: %s (%d)", mach_error_string(kret), kret);

 kret = mach_port_insert_right(mach_task_self(), exception_port, exception_port, MACH_MSG_TYPE_MAKE_SEND);
 if (kret != KERN_SUCCESS)
  T_FAIL("mach_port_insert_right: %s (%d)", mach_error_string(kret), kret);

 kret = task_set_exception_ports(mach_task_self(), EXC_MASK_CRASH | EXC_MASK_CORPSE_NOTIFY, exception_port,
                                 (exception_behavior_t)(EXCEPTION_DEFAULT | MACH_EXCEPTION_CODES), 0);
 if (kret != KERN_SUCCESS)
  T_FAIL("task_set_exception_ports: %s (%d)", mach_error_string(kret), kret);

 dispatch_semaphore_signal(sync_sema);

 kret = mach_msg_server(mach_exc_server, MACH_MSG_SIZE_RELIABLE, exception_port, 0);
 if (kret != KERN_SUCCESS)
  T_FAIL("mach_msg_server: %s (%d)", mach_error_string(kret), kret);

 return ((void*)0);
}
