
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ledc_timer_t ;
typedef size_t ledc_mode_t ;
struct TYPE_8__ {TYPE_3__* timer_group; } ;
struct TYPE_7__ {TYPE_2__* timer; } ;
struct TYPE_5__ {int low_speed_update; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;


 TYPE_4__ LEDC ;
 size_t LEDC_LOW_SPEED_MODE ;

__attribute__((used)) static void ledc_ls_timer_update(ledc_mode_t speed_mode, ledc_timer_t timer_sel)
{
    if (speed_mode == LEDC_LOW_SPEED_MODE) {
        LEDC.timer_group[speed_mode].timer[timer_sel].conf.low_speed_update = 1;
    }
}
