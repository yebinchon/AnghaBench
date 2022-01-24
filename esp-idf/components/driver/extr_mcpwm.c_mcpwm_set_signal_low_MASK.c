#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t mcpwm_unit_t ;
typedef  size_t mcpwm_timer_t ;
typedef  size_t mcpwm_operator_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_5__ {TYPE_1__* generator; } ;
struct TYPE_4__ {int utez; int utea; int utep; int dtez; int dtea; int dtep; int uteb; int dteb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_3__** MCPWM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MCPWM_OPR_MAX ; 
 int /*<<< orphan*/  MCPWM_OP_ERROR ; 
 int /*<<< orphan*/  MCPWM_TIMER_ERROR ; 
 size_t MCPWM_TIMER_MAX ; 
 size_t MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 int /*<<< orphan*/  mcpwm_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC3(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num)
{
    FUNC0(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(&mcpwm_spinlock);
    if (op_num == 0) {
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utea = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtea = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
    } if (op_num == 1) {
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utez = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].uteb = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].utep = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtez = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dteb = 1;
        MCPWM[mcpwm_num]->channel[timer_num].generator[op_num].dtep = 1;
    }
    FUNC2(&mcpwm_spinlock);
    return ESP_OK;
}