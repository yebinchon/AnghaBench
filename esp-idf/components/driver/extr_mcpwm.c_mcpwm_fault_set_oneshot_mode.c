
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef scalar_t__ mcpwm_fault_signal_t ;
typedef void* mcpwm_action_on_pwmxb_t ;
typedef void* mcpwm_action_on_pwmxa_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_4__ {int f0_ost; int f1_ost; int f2_ost; void* b_ost_u; void* b_ost_d; void* a_ost_u; void* a_ost_d; scalar_t__ f2_cbc; scalar_t__ f1_cbc; scalar_t__ f0_cbc; } ;
struct TYPE_5__ {TYPE_1__ tz_cfg0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_SELECT_F0 ;
 scalar_t__ MCPWM_SELECT_F1 ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_fault_set_oneshot_mode(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_fault_signal_t fault_sig,
                                       mcpwm_action_on_pwmxa_t action_on_pwmxa, mcpwm_action_on_pwmxb_t action_on_pwmxb)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    if (fault_sig == MCPWM_SELECT_F0) {
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f0_ost = 1;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f0_cbc = 0;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_d = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_u = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_d = action_on_pwmxb;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_u = action_on_pwmxb;
    } else if (fault_sig == MCPWM_SELECT_F1) {
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f1_ost = 1;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f1_cbc = 0;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_d = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_u = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_d = action_on_pwmxb;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_u = action_on_pwmxb;
    } else {
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f2_ost = 1;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.f2_cbc = 0;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_d = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.a_ost_u = action_on_pwmxa;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_d = action_on_pwmxb;
        MCPWM[mcpwm_num]->channel[timer_num].tz_cfg0.b_ost_u = action_on_pwmxb;
    }
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
