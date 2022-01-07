
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
typedef size_t ledc_timer_t ;
typedef size_t ledc_mode_t ;
typedef void* ledc_clk_src_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int apb_clk_sel; } ;
struct TYPE_10__ {TYPE_4__* timer_group; TYPE_1__ conf; } ;
struct TYPE_9__ {TYPE_3__* timer; } ;
struct TYPE_7__ {int tick_sel; void* duty_resolution; void* clock_divider; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;


 int ESP_OK ;
 TYPE_5__ LEDC ;
 int LEDC_ARG_CHECK (int,char*) ;
 void* LEDC_REF_TICK ;
 size_t LEDC_SPEED_MODE_MAX ;
 size_t LEDC_TIMER_MAX ;
 int ledc_ls_timer_update (size_t,size_t) ;
 int ledc_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t ledc_timer_set(ledc_mode_t speed_mode, ledc_timer_t timer_sel, uint32_t clock_divider, uint32_t duty_resolution,
        ledc_clk_src_t clk_src)
{
    LEDC_ARG_CHECK(speed_mode < LEDC_SPEED_MODE_MAX, "speed_mode");
    LEDC_ARG_CHECK(timer_sel < LEDC_TIMER_MAX, "timer_select");
    portENTER_CRITICAL(&ledc_spinlock);
    LEDC.timer_group[speed_mode].timer[timer_sel].conf.clock_divider = clock_divider;
    LEDC.timer_group[speed_mode].timer[timer_sel].conf.duty_resolution = duty_resolution;
    ledc_ls_timer_update(speed_mode, timer_sel);
    portEXIT_CRITICAL(&ledc_spinlock);
    return ESP_OK;
}
