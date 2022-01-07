
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alarm_en; int auto_reload; int counter_en; int intr_type; int divider; int counter_dir; } ;
typedef TYPE_1__ timer_config_t ;


 int TIMER_COUNT_UP ;
 int TIMER_DIVIDER ;
 int TIMER_INTR_LEVEL ;
 int TIMER_PAUSE ;
 int timer_enable_intr (int,int) ;
 int timer_init (int,int,TYPE_1__*) ;
 int timer_pause (int,int) ;
 int timer_set_alarm_value (int,int,int) ;
 int timer_set_counter_value (int,int,int) ;

__attribute__((used)) static void my_timer_init(int timer_group, int timer_idx, int ival)
{
    timer_config_t config;
    config.alarm_en = 1;
    config.auto_reload = 1;
    config.counter_dir = TIMER_COUNT_UP;
    config.divider = TIMER_DIVIDER;
    config.intr_type = TIMER_INTR_LEVEL;
    config.counter_en = TIMER_PAUSE;

    timer_init(timer_group, timer_idx, &config);

    timer_pause(timer_group, timer_idx);

    timer_set_counter_value(timer_group, timer_idx, 0x00000000ULL);

    timer_set_alarm_value(timer_group, timer_idx, ival);

    timer_enable_intr(timer_group, timer_idx);
}
