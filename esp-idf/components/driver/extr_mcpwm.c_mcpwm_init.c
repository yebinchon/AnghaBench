
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
struct TYPE_14__ {int duty_mode; int cmpr_b; int cmpr_a; int counter_mode; int frequency; } ;
typedef TYPE_6__ mcpwm_config_t ;
typedef int esp_err_t ;
struct TYPE_13__ {int global_up_en; int global_force_up; } ;
struct TYPE_12__ {int operator1_sel; int operator2_sel; scalar_t__ operator0_sel; } ;
struct TYPE_9__ {int prescale; } ;
struct TYPE_15__ {TYPE_5__ update_cfg; TYPE_4__ timer_sel; TYPE_3__* timer; TYPE_1__ clk_cfg; } ;
struct TYPE_10__ {int mode; } ;
struct TYPE_11__ {TYPE_2__ mode; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_8__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_CLK_PRESCL ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 scalar_t__ PERIPH_PWM0_MODULE ;
 int mcpwm_set_duty (size_t,size_t,int,int ) ;
 int mcpwm_set_duty_type (size_t,size_t,int,int ) ;
 int mcpwm_set_frequency (size_t,size_t,int ) ;
 int mcpwm_spinlock ;
 int mcpwm_start (size_t,size_t) ;
 int periph_module_enable (scalar_t__) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_init(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, const mcpwm_config_t *mcpwm_conf)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    periph_module_enable(PERIPH_PWM0_MODULE + mcpwm_num);
    portENTER_CRITICAL(&mcpwm_spinlock);
    MCPWM[mcpwm_num]->clk_cfg.prescale = MCPWM_CLK_PRESCL;
    mcpwm_set_frequency(mcpwm_num, timer_num, mcpwm_conf->frequency);
    MCPWM[mcpwm_num]->timer[timer_num].mode.mode = mcpwm_conf ->counter_mode;
    mcpwm_set_duty(mcpwm_num, timer_num, 0, mcpwm_conf->cmpr_a);
    mcpwm_set_duty(mcpwm_num, timer_num, 1, mcpwm_conf->cmpr_b);
    mcpwm_set_duty_type(mcpwm_num, timer_num, 0, mcpwm_conf->duty_mode);
    mcpwm_set_duty_type(mcpwm_num, timer_num, 1, mcpwm_conf->duty_mode);
    mcpwm_start(mcpwm_num, timer_num);
    MCPWM[mcpwm_num]->timer_sel.operator0_sel = 0;
    MCPWM[mcpwm_num]->timer_sel.operator1_sel = 1;
    MCPWM[mcpwm_num]->timer_sel.operator2_sel = 2;
    MCPWM[mcpwm_num]->update_cfg.global_up_en = 1;
    MCPWM[mcpwm_num]->update_cfg.global_force_up = 1;
    MCPWM[mcpwm_num]->update_cfg.global_force_up = 0;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
