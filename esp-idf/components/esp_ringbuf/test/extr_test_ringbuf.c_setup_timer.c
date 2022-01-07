
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alarm_en; int auto_reload; int divider; int counter_en; int intr_type; int counter_dir; } ;
typedef TYPE_1__ timer_config_t ;


 int TIMER_COUNT_UP ;
 int TIMER_GROUP ;
 int TIMER_INTR_LEVEL ;
 int TIMER_NUMBER ;
 int TIMER_PAUSE ;
 int ringbuffer_isr ;
 int ringbuffer_isr_handle ;
 int timer_enable_intr (int,int) ;
 int timer_init (int,int,TYPE_1__*) ;
 int timer_isr_register (int,int,int ,int *,int ,int *) ;
 int timer_pause (int,int) ;
 int timer_set_alarm_value (int,int,int) ;
 int timer_set_auto_reload (int,int,int) ;
 int timer_set_counter_value (int,int,int) ;

__attribute__((used)) static void setup_timer(void)
{

    int timer_group = TIMER_GROUP;
    int timer_idx = TIMER_NUMBER;
    timer_config_t config;
    config.alarm_en = 1;
    config.auto_reload = 1;
    config.counter_dir = TIMER_COUNT_UP;
    config.divider = 10000;
    config.intr_type = TIMER_INTR_LEVEL;
    config.counter_en = TIMER_PAUSE;
    timer_init(timer_group, timer_idx, &config);
    timer_pause(timer_group, timer_idx);
    timer_set_counter_value(timer_group, timer_idx, 0x00000000ULL);
    timer_set_alarm_value(timer_group, timer_idx, 20);
    timer_enable_intr(timer_group, timer_idx);
    timer_set_auto_reload(timer_group, timer_idx, 1);
    timer_isr_register(timer_group, timer_idx, ringbuffer_isr, ((void*)0), 0, &ringbuffer_isr_handle);
}
