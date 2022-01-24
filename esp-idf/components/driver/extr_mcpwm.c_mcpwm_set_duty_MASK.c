#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float uint32_t ;
typedef  size_t mcpwm_unit_t ;
typedef  size_t mcpwm_timer_t ;
typedef  size_t mcpwm_operator_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_12__ {TYPE_5__* channel; TYPE_2__* timer; } ;
struct TYPE_10__ {void* b_upmethod; void* a_upmethod; } ;
struct TYPE_11__ {TYPE_4__ cmpr_cfg; TYPE_3__* cmpr_value; } ;
struct TYPE_9__ {float cmpr_val; } ;
struct TYPE_7__ {float period; } ;
struct TYPE_8__ {TYPE_1__ period; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_6__** MCPWM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MCPWM_OPR_MAX ; 
 int /*<<< orphan*/  MCPWM_OP_ERROR ; 
 int /*<<< orphan*/  MCPWM_TIMER_ERROR ; 
 size_t MCPWM_TIMER_MAX ; 
 size_t MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 int /*<<< orphan*/  mcpwm_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC4(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, mcpwm_operator_t op_num, float duty)
{
    uint32_t set_duty;
    FUNC1(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(op_num < MCPWM_OPR_MAX, MCPWM_OP_ERROR, ESP_ERR_INVALID_ARG);
    FUNC2(&mcpwm_spinlock);
    set_duty = (MCPWM[mcpwm_num]->timer[timer_num].period.period) * (duty) / 100;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_value[op_num].cmpr_val = set_duty;
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.a_upmethod = FUNC0(0);
    MCPWM[mcpwm_num]->channel[timer_num].cmpr_cfg.b_upmethod = FUNC0(0);
    FUNC3(&mcpwm_spinlock);
    return ESP_OK;
}