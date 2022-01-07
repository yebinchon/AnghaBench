
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter_en; int divider; int counter_dir; int auto_reload; int alarm_en; } ;
typedef TYPE_1__ timer_config_t ;


 int SYSVIEW_TIMER_DIV ;
 int TIMER_COUNT_UP ;
 int TS_TIMER_GROUP ;
 int TS_TIMER_ID ;
 int timer_init (int ,int ,TYPE_1__*) ;
 int timer_set_counter_value (int ,int ,int) ;
 int timer_start (int ,int ) ;

__attribute__((used)) static void SEGGER_SYSVIEW_TS_Init(void)
{
}
