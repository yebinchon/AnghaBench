#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timer_intr_t ;
typedef  size_t timer_group_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
struct TYPE_4__ {TYPE_1__ int_ena; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__** TG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t TIMER_GROUP_MAX ; 
 int /*<<< orphan*/  TIMER_GROUP_NUM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * timer_spinlock ; 

esp_err_t FUNC3(timer_group_t group_num, timer_intr_t en_mask)
{
    FUNC0(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC1(&timer_spinlock[group_num]);
    TG[group_num]->int_ena.val |= en_mask;
    FUNC2(&timer_spinlock[group_num]);
    return ESP_OK;
}