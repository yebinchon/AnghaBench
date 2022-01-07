
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef size_t mcpwm_operator_t ;
typedef int esp_err_t ;
struct TYPE_8__ {TYPE_3__* channel; } ;
struct TYPE_6__ {void* b_upmethod; void* a_upmethod; } ;
struct TYPE_7__ {TYPE_2__ cmpr_cfg; TYPE_1__* cmpr_value; } ;
struct TYPE_5__ {int cmpr_val; } ;


 void* BIT (int ) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_4__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 size_t MCPWM_OPR_MAX ;
 int MCPWM_OP_ERROR ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_set_duty_in_us(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num, uint32_t duty)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[op_num].cmpr_val = duty;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.a_upmethod = BIT(0);
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.b_upmethod = BIT(0);
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
