#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t mcpwm_unit_t ;
typedef  size_t mcpwm_timer_t ;
struct TYPE_8__ {scalar_t__ carrier_os_mode; int /*<<< orphan*/  carrier_ivt_mode; int /*<<< orphan*/  pulse_width_in_os; int /*<<< orphan*/  carrier_duty; int /*<<< orphan*/  carrier_period; } ;
typedef  TYPE_3__ mcpwm_carrier_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_9__ {TYPE_2__* channel; } ;
struct TYPE_6__ {scalar_t__ in_invert; } ;
struct TYPE_7__ {TYPE_1__ carrier_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_5__** MCPWM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MCPWM_ONESHOT_MODE_EN ; 
 int /*<<< orphan*/  MCPWM_TIMER_ERROR ; 
 size_t MCPWM_TIMER_MAX ; 
 size_t MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcpwm_spinlock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC9(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num, const mcpwm_carrier_config_t *carrier_conf)
{
    FUNC0(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    FUNC7(&mcpwm_spinlock);
    FUNC1(mcpwm_num, timer_num);
    FUNC6(mcpwm_num, timer_num, carrier_conf->carrier_period);
    FUNC5(mcpwm_num, timer_num, carrier_conf->carrier_duty);
    if (carrier_conf->carrier_os_mode == MCPWM_ONESHOT_MODE_EN) {
        FUNC3(mcpwm_num, timer_num, carrier_conf->pulse_width_in_os);
    } else {
        FUNC2(mcpwm_num, timer_num);
    }
    FUNC4(mcpwm_num, timer_num, carrier_conf->carrier_ivt_mode);
    MCPWM[mcpwm_num]->channel[timer_num].carrier_cfg.in_invert = 0;
    FUNC8(&mcpwm_spinlock);
    return ESP_OK;
}