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
typedef  int /*<<< orphan*/  capture ;

/* Variables and functions */
 int /*<<< orphan*/  cap_queue ; 
 int /*<<< orphan*/  disp_captured_signal ; 
 int /*<<< orphan*/  gpio_test_signal ; 
 int /*<<< orphan*/  mcpwm_example_config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    FUNC0("Testing MCPWM...\n");
    cap_queue = FUNC1(1, sizeof(capture)); //comment if you don't want to use capture module
    FUNC2(disp_captured_signal, "mcpwm_config", 4096, NULL, 5, NULL);  //comment if you don't want to use capture module
    FUNC2(gpio_test_signal, "gpio_test_signal", 4096, NULL, 5, NULL); //comment if you don't want to use capture module
    FUNC2(mcpwm_example_config, "mcpwm_example_config", 4096, NULL, 5, NULL);
}