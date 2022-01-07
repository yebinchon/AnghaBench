
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
struct TYPE_8__ {scalar_t__ carrier_os_mode; int carrier_ivt_mode; int pulse_width_in_os; int carrier_duty; int carrier_period; } ;
typedef TYPE_3__ mcpwm_carrier_config_t ;
typedef int esp_err_t ;
struct TYPE_9__ {TYPE_2__* channel; } ;
struct TYPE_6__ {scalar_t__ in_invert; } ;
struct TYPE_7__ {TYPE_1__ carrier_cfg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_5__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_ONESHOT_MODE_EN ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_carrier_enable (size_t,size_t) ;
 int mcpwm_carrier_oneshot_mode_disable (size_t,size_t) ;
 int mcpwm_carrier_oneshot_mode_enable (size_t,size_t,int ) ;
 int mcpwm_carrier_output_invert (size_t,size_t,int ) ;
 int mcpwm_carrier_set_duty_cycle (size_t,size_t,int ) ;
 int mcpwm_carrier_set_period (size_t,size_t,int ) ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_carrier_init(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, const mcpwm_carrier_config_t *carrier_conf)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    mcpwm_carrier_enable(mcpwm_num, timer_num);
    mcpwm_carrier_set_period(mcpwm_num, timer_num, carrier_conf->carrier_period);
    mcpwm_carrier_set_duty_cycle(mcpwm_num, timer_num, carrier_conf->carrier_duty);
    if (carrier_conf->carrier_os_mode == MCPWM_ONESHOT_MODE_EN) {
        mcpwm_carrier_oneshot_mode_enable(mcpwm_num, timer_num, carrier_conf->pulse_width_in_os);
    } else {
        mcpwm_carrier_oneshot_mode_disable(mcpwm_num, timer_num);
    }
    mcpwm_carrier_output_invert(mcpwm_num, timer_num, carrier_conf->carrier_ivt_mode);
    MCPWM[mcpwm_num]->channel[timer_num].carrier_cfg.in_invert = 0;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
