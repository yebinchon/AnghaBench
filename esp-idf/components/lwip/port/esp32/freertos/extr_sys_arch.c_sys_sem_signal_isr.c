
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_sem_t ;
typedef scalar_t__ BaseType_t ;


 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int xSemaphoreGiveFromISR (int ,scalar_t__*) ;

int
sys_sem_signal_isr(sys_sem_t *sem)
{
    BaseType_t woken = pdFALSE;
    xSemaphoreGiveFromISR(*sem, &woken);
    return woken == pdTRUE;
}
