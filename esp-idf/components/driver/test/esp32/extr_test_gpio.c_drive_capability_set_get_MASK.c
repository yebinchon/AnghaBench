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
typedef  int /*<<< orphan*/  gpio_num_t ;
typedef  int /*<<< orphan*/  gpio_drive_cap_t ;
typedef  int /*<<< orphan*/  gpio_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  GPIO_DRIVE_CAP_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(gpio_num_t num, gpio_drive_cap_t capability)
{
    gpio_config_t pad_io = FUNC6(num);
    FUNC2(FUNC3(&pad_io));
    FUNC0(FUNC5(num, GPIO_DRIVE_CAP_MAX) == ESP_ERR_INVALID_ARG);

    gpio_drive_cap_t cap;
    FUNC2(FUNC5(num, capability));
    FUNC2(FUNC4(num, &cap));
    FUNC1(cap, capability);
}