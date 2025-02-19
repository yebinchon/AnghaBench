
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef int esp_err_t ;
struct TYPE_12__ {TYPE_5__* channel; TYPE_2__* timer; } ;
struct TYPE_10__ {scalar_t__ b_upmethod; scalar_t__ a_upmethod; } ;
struct TYPE_11__ {TYPE_4__ cmpr_cfg; TYPE_3__* cmpr_value; } ;
struct TYPE_9__ {int cmpr_val; } ;
struct TYPE_7__ {int period; int prescale; scalar_t__ upmethod; } ;
struct TYPE_8__ {TYPE_1__ period; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_6__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_CLK ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int TIMER_CLK_PRESCALE ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_set_frequency(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, uint32_t frequency)
{
    uint32_t mcpwm_num_of_pulse;
    uint32_t previous_period;
    uint32_t set_duty_a, set_duty_b;
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    mcpwm_num_of_pulse = MCPWM_CLK / (frequency * (TIMER_CLK_PRESCALE + 1));
    previous_period = MCPWM[mcpwm_num]->timer[timer_num].period.period;
    MCPWM[mcpwm_num]->timer[timer_num].period.prescale = TIMER_CLK_PRESCALE;
    MCPWM[mcpwm_num]->timer[timer_num].period.period = mcpwm_num_of_pulse;
    MCPWM[mcpwm_num]->timer[timer_num].period.upmethod = 0;
    set_duty_a = (((MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[0].cmpr_val) * mcpwm_num_of_pulse) / previous_period);
    set_duty_b = (((MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[1].cmpr_val) * mcpwm_num_of_pulse) / previous_period);
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[0].cmpr_val = set_duty_a;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[1].cmpr_val = set_duty_b;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.a_upmethod = 0;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.b_upmethod = 0;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
