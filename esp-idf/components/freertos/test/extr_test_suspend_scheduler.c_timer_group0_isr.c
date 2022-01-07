
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ portBASE_TYPE ;


 int TIMER_0 ;
 int TIMER_GROUP_0 ;
 int isr_count ;
 int isr_semaphore ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portYIELD_FROM_ISR () ;
 int timer_group_enable_alarm_in_isr (int ,int ) ;
 int timer_group_intr_clr_in_isr (int ,int ) ;
 int xSemaphoreGiveFromISR (int ,scalar_t__*) ;

__attribute__((used)) static void timer_group0_isr(void *vp_arg)
{
    timer_group_intr_clr_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_group_enable_alarm_in_isr(TIMER_GROUP_0, TIMER_0);
    portBASE_TYPE higher_awoken = pdFALSE;
    isr_count++;
    xSemaphoreGiveFromISR(isr_semaphore, &higher_awoken);
    if (higher_awoken == pdTRUE) {
        portYIELD_FROM_ISR();
    }
}
