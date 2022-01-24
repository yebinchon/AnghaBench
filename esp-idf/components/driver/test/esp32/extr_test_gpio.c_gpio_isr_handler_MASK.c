#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  isr_cnt; int /*<<< orphan*/  gpio_num; } ;
typedef  TYPE_1__ gpio_isr_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void* arg)
{
    gpio_isr_param_t *param = (gpio_isr_param_t *)arg;
    FUNC0("GPIO[%d] intr, val: %d\n", param->gpio_num, FUNC1(param->gpio_num));
    param->isr_cnt++;
}