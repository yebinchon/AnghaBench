
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ kernel_thread_start (int ,int ,int *) ;
 int lt_trylock_thread ;
 int thread_deallocate (int ) ;

__attribute__((used)) static void
lt_start_trylock_thread(thread_continue_t func)
{
 thread_t thread;
 kern_return_t kr;

 kr = kernel_thread_start(lt_trylock_thread, func, &thread);
 assert(kr == KERN_SUCCESS);

 thread_deallocate(thread);
}
