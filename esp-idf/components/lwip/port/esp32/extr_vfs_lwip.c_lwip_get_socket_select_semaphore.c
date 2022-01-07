
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sys_thread_sem_get () ;

__attribute__((used)) static void *lwip_get_socket_select_semaphore(void)
{



    return (void *) sys_thread_sem_get();
}
