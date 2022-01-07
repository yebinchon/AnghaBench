
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef size_t mcpwm_operator_t ;
typedef scalar_t__ mcpwm_duty_type_t ;
typedef int esp_err_t ;
struct TYPE_10__ {TYPE_4__* channel; TYPE_2__* timer; } ;
struct TYPE_9__ {TYPE_3__* generator; } ;
struct TYPE_8__ {int utez; int utea; int dtep; int dtea; int uteb; int dteb; scalar_t__ dtez; scalar_t__ utep; } ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_7__ {TYPE_1__ mode; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_5__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_DOWN_COUNTER ;
 scalar_t__ MCPWM_DUTY_MODE_1 ;
 scalar_t__ MCPWM_DUTY_MODE_MAX ;
 int MCPWM_DUTY_TYPE_ERROR ;
 size_t MCPWM_OPR_A ;
 size_t MCPWM_OPR_B ;
 size_t MCPWM_OPR_MAX ;
 int MCPWM_OP_ERROR ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 scalar_t__ MCPWM_UP_COUNTER ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_set_duty_type(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num,
                              mcpwm_duty_type_t duty_num)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(duty_num < MCPWM_DUTY_MODE_MAX, MCPWM_DUTY_TYPE_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    if (op_num == MCPWM_OPR_A) {
        if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_UP_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            }
        } else if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_DOWN_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            }
        } else {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 1;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 2;
            }
        }
    }
    if (op_num == MCPWM_OPR_B) {
        if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_UP_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            }
        } else if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_DOWN_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            }
        } else {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 1;
            } else {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 2;
            }
        }
    }
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
