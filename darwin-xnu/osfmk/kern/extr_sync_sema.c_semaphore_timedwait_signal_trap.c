
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore_timedwait_signal_trap_args {int nsec; int sec; int signal_name; int wait_name; } ;
typedef int kern_return_t ;


 int semaphore_timedwait_signal_trap_internal (int ,int ,int ,int ,int ) ;
 int thread_syscall_return ;

kern_return_t
semaphore_timedwait_signal_trap(
 struct semaphore_timedwait_signal_trap_args *args)
{
 return(semaphore_timedwait_signal_trap_internal(args->wait_name, args->signal_name, args->sec, args->nsec, thread_syscall_return));
}
