#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ timer_idx_t ;
typedef  scalar_t__ timer_group_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TIMER_GROUP_MAX ; 
 int /*<<< orphan*/  TIMER_GROUP_NUM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TIMER_MAX ; 
 int /*<<< orphan*/  TIMER_NUM_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

esp_err_t FUNC3(timer_group_t group_num, timer_idx_t timer_num)
{
    FUNC0(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC0(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    return FUNC2(group_num, FUNC1(timer_num));
}