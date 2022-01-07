
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef size_t mcpwm_operator_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_5__ {TYPE_1__* generator; } ;
struct TYPE_4__ {int utez; int utea; int utep; int dtez; int dtea; int dtep; int uteb; int dteb; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 size_t MCPWM_OPR_A ;
 size_t MCPWM_OPR_MAX ;
 int MCPWM_OP_ERROR ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_set_signal_high(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    if (op_num == MCPWM_OPR_A) {
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
    } else {
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 2;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
    }

    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
