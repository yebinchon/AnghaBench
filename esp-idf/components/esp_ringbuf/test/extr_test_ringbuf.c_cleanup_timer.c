
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_GROUP ;
 int TIMER_NUMBER ;
 int esp_intr_free (int ) ;
 int ringbuffer_isr_handle ;
 int timer_disable_intr (int ,int ) ;

__attribute__((used)) static void cleanup_timer(void)
{
    timer_disable_intr(TIMER_GROUP, TIMER_NUMBER);
    esp_intr_free(ringbuffer_isr_handle);
}
