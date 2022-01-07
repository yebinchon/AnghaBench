
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_t ;
typedef int kern_return_t ;
typedef int exception_type_t ;


 int EXC_CORPSE_NOTIFY ;
 int KERN_SUCCESS ;
 int SIGKILL ;
 int T_ASSERT_EQ (int ,int ,char*) ;
 int T_ASSERT_POSIX_ZERO (int ,char*) ;
 int dispatch_semaphore_signal (int ) ;
 int kill (int ,int ) ;
 int pid_for_task (int ,int *) ;
 int sync_sema ;

kern_return_t
catch_mach_exception_raise(mach_port_t exception_port,
                           mach_port_t thread,
                           mach_port_t task,
                           exception_type_t exception,
                           mach_exception_data_t code,
                           mach_msg_type_number_t code_count)
{
#pragma unused(exception_port, thread, task, code, code_count)
 pid_t pid;
 pid_for_task(task, &pid);
 T_ASSERT_EQ(exception, EXC_CORPSE_NOTIFY, "exception type");
 T_ASSERT_POSIX_ZERO(kill(pid, SIGKILL), "kill");
 dispatch_semaphore_signal(sync_sema);
 return KERN_SUCCESS;
}
