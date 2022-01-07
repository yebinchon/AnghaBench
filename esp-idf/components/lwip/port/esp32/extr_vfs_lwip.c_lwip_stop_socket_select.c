
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sys_sem_signal (void*) ;

__attribute__((used)) static void lwip_stop_socket_select(void *sem)
{
    sys_sem_signal(sem);
}
