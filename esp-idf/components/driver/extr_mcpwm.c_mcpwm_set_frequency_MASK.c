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
typedef  int uint32_t ;
typedef  size_t mcpwm_unit_t ;
typedef  size_t mcpwm_timer_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_12__ {TYPE_5__* channel; TYPE_2__* timer; } ;
struct TYPE_10__ {scalar_t__ b_upmethod; scalar_t__ a_upmethod; } ;
struct TYPE_11__ {TYPE_4__ cmpr_cfg; TYPE_3__* cmpr_value; } ;
struct TYPE_9__ {int cmpr_val; } ;
struct TYPE_7__ {int period; int prescale; scalar_t__ upmethod; } ;
struct TYPE_8__ {TYPE_1__ period; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_6__** MCPWM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MCPWM_CLK ; 
 int /*<<< orphan*/  MCPWM_TIMER_ERROR ; 
 size_t MCPWM_TIMER_MAX ; 
 size_t MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 int TIMER_CLK_PRESCALE ; 
 int /*<<< orphan*/  mcpwm_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC3(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, uint32_t frequency)
{
    uint32_t mcpwm_num_of_pulse;
    uint32_t previous_period;
    uint32_t set_duty_a, set_duty_b;
    FUNC0(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(&mcpwm_spinlock);
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
    FUNC2(&mcpwm_spinlock);
    return ESP_OK;
}