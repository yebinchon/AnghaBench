
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BaseType_t ;


 int pdTRUE ;
 scalar_t__ sys_sem_signal_isr (void*) ;

__attribute__((used)) static void lwip_stop_socket_select_isr(void *sem, BaseType_t *woken)
{
    if (sys_sem_signal_isr(sem) && woken) {
        *woken = pdTRUE;
    }
}
