#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ledc_timer_t ;
struct TYPE_5__ {int freq_hz; int /*<<< orphan*/  clk_cfg; int /*<<< orphan*/  timer_num; int /*<<< orphan*/  duty_resolution; int /*<<< orphan*/  speed_mode; } ;
typedef  TYPE_1__ ledc_timer_config_t ;
typedef  int /*<<< orphan*/  ledc_timer_bit_t ;
typedef  int /*<<< orphan*/  ledc_mode_t ;
typedef  int /*<<< orphan*/  ledc_channel_t ;
struct TYPE_6__ {int duty; int /*<<< orphan*/  channel; int /*<<< orphan*/  speed_mode; int /*<<< orphan*/  timer_sel; int /*<<< orphan*/  intr_type; int /*<<< orphan*/  gpio_num; } ;
typedef  TYPE_2__ ledc_channel_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEDC_AUTO_CLK ; 
 int /*<<< orphan*/  LEDC_INTR_DISABLE ; 
 int /*<<< orphan*/  PULSE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(ledc_channel_t channel, ledc_timer_bit_t timer_bit, ledc_timer_t timer, ledc_mode_t speed_mode)
{
    ledc_channel_config_t ledc_ch_config = {
        .gpio_num = PULSE_IO,
        .speed_mode = speed_mode,
        .channel  = channel,
        .intr_type = LEDC_INTR_DISABLE,
        .timer_sel = timer,
        .duty = 4000,
    };
    ledc_timer_config_t ledc_time_config = {
        .speed_mode = speed_mode,
        .duty_resolution = timer_bit,
        .timer_num = timer,
        .freq_hz = 5000,
        .clk_cfg = LEDC_AUTO_CLK,
    };
    FUNC0(FUNC1(&ledc_ch_config));
    FUNC0(FUNC2(&ledc_time_config));

    // duty ratio: (2^duty)/(2^timer_bit)
    FUNC3(ledc_ch_config.speed_mode, ledc_ch_config.channel, 0);
    FUNC3(ledc_ch_config.speed_mode, ledc_ch_config.channel, 1);
    FUNC3(ledc_ch_config.speed_mode, ledc_ch_config.channel, 1 << 12); // 50% duty
    FUNC3(ledc_ch_config.speed_mode, ledc_ch_config.channel, (1 << 13) - 1);
    FUNC3(ledc_ch_config.speed_mode, ledc_ch_config.channel, (1 << 13) - 2);
}