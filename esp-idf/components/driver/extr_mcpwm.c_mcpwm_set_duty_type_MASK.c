#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t mcpwm_unit_t ;
typedef  size_t mcpwm_timer_t ;
typedef  size_t mcpwm_operator_t ;
typedef  scalar_t__ mcpwm_duty_type_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_10__ {TYPE_4__* channel; TYPE_2__* timer; } ;
struct TYPE_9__ {TYPE_3__* generator; } ;
struct TYPE_8__ {int utez; int utea; int dtep; int dtea; int uteb; int dteb; scalar_t__ dtez; scalar_t__ utep; } ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_7__ {TYPE_1__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_5__** MCPWM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MCPWM_DOWN_COUNTER ; 
 scalar_t__ MCPWM_DUTY_MODE_1 ; 
 scalar_t__ MCPWM_DUTY_MODE_MAX ; 
 int /*<<< orphan*/  MCPWM_DUTY_TYPE_ERROR ; 
 size_t MCPWM_OPR_A ; 
 size_t MCPWM_OPR_B ; 
 size_t MCPWM_OPR_MAX ; 
 int /*<<< orphan*/  MCPWM_OP_ERROR ; 
 int /*<<< orphan*/  MCPWM_TIMER_ERROR ; 
 size_t MCPWM_TIMER_MAX ; 
 size_t MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 scalar_t__ MCPWM_UP_COUNTER ; 
 int /*<<< orphan*/  mcpwm_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC3(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num,
                              mcpwm_duty_type_t duty_num)
{
    FUNC0(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(duty_num < MCPWM_DUTY_MODE_MAX, MCPWM_DUTY_TYPE_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(&mcpwm_spinlock);
    if (op_num == MCPWM_OPR_A) {
        if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_UP_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            } else {   //MCPWM_DUTY_MODE_0
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            }
        } else if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_DOWN_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            } else {   //MCPWM_DUTY_MODE_0
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            }
        } else {   //Timer count up-down
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 1;
            } else {   //MCPWM_DUTY_MODE_0
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
            } else {   //MCPWM_DUTY_MODE_0
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 0;
            }
        } else if (MCPWM[mcpwm_num]->timer[timer_num].mode.mode == MCPWM_DOWN_COUNTER) {
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            } else {    //MCPWM_DUTY_MODE_0
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 0;
            }
        } else {    //Timer count up-down
            if (duty_num == MCPWM_DUTY_MODE_1) {
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 1;
            } else {    //MCPWM_DUTY_MODE_0
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 2;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 1;
                MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 2;
            }
        }
    }
    FUNC2(&mcpwm_spinlock);
    return ESP_OK;
}