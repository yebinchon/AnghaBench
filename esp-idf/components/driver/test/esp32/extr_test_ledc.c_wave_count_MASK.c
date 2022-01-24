#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  counter_l_lim; int /*<<< orphan*/  counter_h_lim; int /*<<< orphan*/  hctrl_mode; int /*<<< orphan*/  lctrl_mode; int /*<<< orphan*/  neg_mode; int /*<<< orphan*/  pos_mode; int /*<<< orphan*/  unit; int /*<<< orphan*/  channel; int /*<<< orphan*/  ctrl_gpio_num; int /*<<< orphan*/  pulse_gpio_num; } ;
typedef  TYPE_1__ pcnt_config_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  HIGHEST_LIMIT ; 
 int /*<<< orphan*/  LOWEST_LIMIT ; 
 int /*<<< orphan*/  PCNT_CHANNEL_0 ; 
 int /*<<< orphan*/  PCNT_COUNT_DIS ; 
 int /*<<< orphan*/  PCNT_COUNT_INC ; 
 int /*<<< orphan*/  PCNT_CTRL_FLOATING_IO ; 
 int /*<<< orphan*/  PCNT_INPUT_IO ; 
 int /*<<< orphan*/  PCNT_MODE_KEEP ; 
 int /*<<< orphan*/  PCNT_MODE_REVERSE ; 
 int /*<<< orphan*/  PCNT_UNIT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int16_t FUNC7(int last_time)
{
    int16_t test_counter;
    pcnt_config_t pcnt_config = {
        .pulse_gpio_num = PCNT_INPUT_IO,
        .ctrl_gpio_num = PCNT_CTRL_FLOATING_IO,
        .channel = PCNT_CHANNEL_0,
        .unit = PCNT_UNIT_0,
        .pos_mode = PCNT_COUNT_INC,
        .neg_mode = PCNT_COUNT_DIS,
        .lctrl_mode = PCNT_MODE_REVERSE,
        .hctrl_mode = PCNT_MODE_KEEP,
        .counter_h_lim = HIGHEST_LIMIT,
        .counter_l_lim = LOWEST_LIMIT,
    };
    FUNC0(FUNC5(&pcnt_config));

    // initialize first
    FUNC0(FUNC2(PCNT_UNIT_0));
    FUNC0(FUNC1(PCNT_UNIT_0));
    FUNC0(FUNC3(PCNT_UNIT_0));
    FUNC0(FUNC4(PCNT_UNIT_0, &test_counter));

    FUNC6(last_time / portTICK_RATE_MS);
    FUNC0(FUNC4(PCNT_UNIT_0, &test_counter));
    return test_counter;
}