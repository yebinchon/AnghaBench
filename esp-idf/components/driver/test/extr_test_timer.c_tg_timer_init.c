
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_INTR_FLAG_LOWMED ;
 int GET_TIMER_INFO (int,int) ;
 double TIMER_SCALE ;
 int test_timer_group_isr ;
 int timer_enable_intr (int,int) ;
 int timer_isr_register (int,int,int ,int ,int ,int *) ;
 int timer_pause (int,int) ;
 int timer_set_alarm_value (int,int,double) ;
 int timer_set_counter_value (int,int,int) ;
 int timer_start (int,int) ;

__attribute__((used)) static void tg_timer_init(int timer_group, int timer_idx, double alarm_time)
{
    timer_pause(timer_group, timer_idx);
    timer_set_counter_value(timer_group, timer_idx, 0x0);
    timer_set_alarm_value(timer_group, timer_idx, alarm_time * TIMER_SCALE);
    timer_enable_intr(timer_group, timer_idx);
    timer_isr_register(timer_group, timer_idx, test_timer_group_isr, GET_TIMER_INFO(timer_group, timer_idx), ESP_INTR_FLAG_LOWMED, ((void*)0));
    timer_start(timer_group, timer_idx);
}
