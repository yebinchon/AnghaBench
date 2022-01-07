
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore_wait_trap_args {int wait_name; } ;
typedef int kern_return_t ;


 int semaphore_wait_trap_internal (int ,int ) ;
 int thread_syscall_return ;

kern_return_t
semaphore_wait_trap(
 struct semaphore_wait_trap_args *args)
{
 return(semaphore_wait_trap_internal(args->wait_name, thread_syscall_return));
}
