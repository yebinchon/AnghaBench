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
struct TYPE_5__ {int freq_hz; int /*<<< orphan*/  speed_mode; int /*<<< orphan*/  clk_cfg; int /*<<< orphan*/  timer_num; int /*<<< orphan*/  duty_resolution; } ;
typedef  TYPE_1__ ledc_timer_config_t ;
struct TYPE_6__ {int duty; int /*<<< orphan*/  gpio_num; int /*<<< orphan*/  channel; int /*<<< orphan*/  hpoint; int /*<<< orphan*/  timer_sel; int /*<<< orphan*/  speed_mode; int /*<<< orphan*/  intr_type; } ;
typedef  TYPE_2__ ledc_channel_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  LEDC_AUTO_CLK ; 
 int /*<<< orphan*/  LEDC_CHANNEL_0 ; 
 int /*<<< orphan*/  LEDC_CHANNEL_1 ; 
 int /*<<< orphan*/  LEDC_CHANNEL_2 ; 
 int /*<<< orphan*/  LEDC_CHANNEL_3 ; 
 int /*<<< orphan*/  LEDC_HIGH_SPEED_MODE ; 
 int /*<<< orphan*/  LEDC_INTR_FADE_END ; 
 int /*<<< orphan*/  LEDC_IO_0 ; 
 int /*<<< orphan*/  LEDC_IO_1 ; 
 int /*<<< orphan*/  LEDC_IO_2 ; 
 int /*<<< orphan*/  LEDC_IO_3 ; 
 int /*<<< orphan*/  LEDC_LOW_SPEED_MODE ; 
 int /*<<< orphan*/  LEDC_TIMER_0 ; 
 int /*<<< orphan*/  LEDC_TIMER_13_BIT ; 
 int /*<<< orphan*/  MESH_LIGHT_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int s_light_inited ; 

esp_err_t FUNC4(void)
{
    if (s_light_inited == true) {
        return ESP_OK;
    }
    s_light_inited = true;

    ledc_timer_config_t ledc_timer = {
        .duty_resolution = LEDC_TIMER_13_BIT,
        .freq_hz = 5000,
        .speed_mode = LEDC_LOW_SPEED_MODE,
        .timer_num = LEDC_TIMER_0,
        .clk_cfg = LEDC_AUTO_CLK,
    };
#ifdef CONFIG_IDF_TARGET_ESP32
    ledc_timer.speed_mode = LEDC_HIGH_SPEED_MODE;
#endif
    FUNC2(&ledc_timer);

    ledc_channel_config_t ledc_channel = {
        .channel = LEDC_CHANNEL_0,
        .duty = 100,
        .gpio_num = LEDC_IO_0,
        .intr_type = LEDC_INTR_FADE_END,
        .speed_mode = LEDC_LOW_SPEED_MODE,
        .timer_sel = LEDC_TIMER_0,
        .hpoint = 0,
    };
    FUNC0(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_1;
    ledc_channel.gpio_num = LEDC_IO_1;
    FUNC0(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_2;
    ledc_channel.gpio_num = LEDC_IO_2;
    FUNC0(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_3;
    ledc_channel.gpio_num = LEDC_IO_3;
    FUNC0(&ledc_channel);
    FUNC1(0);

    FUNC3(MESH_LIGHT_INIT);
    return ESP_OK;
}