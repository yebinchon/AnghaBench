
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ledc_timer_t ;
struct TYPE_5__ {int freq_hz; int clk_cfg; int timer_num; int duty_resolution; int speed_mode; } ;
typedef TYPE_1__ ledc_timer_config_t ;
typedef int ledc_timer_bit_t ;
typedef int ledc_mode_t ;
typedef int ledc_channel_t ;
struct TYPE_6__ {int duty; int channel; int speed_mode; int timer_sel; int intr_type; int gpio_num; } ;
typedef TYPE_2__ ledc_channel_config_t ;


 int LEDC_AUTO_CLK ;
 int LEDC_INTR_DISABLE ;
 int PULSE_IO ;
 int TEST_ESP_OK (int ) ;
 int ledc_channel_config (TYPE_2__*) ;
 int ledc_timer_config (TYPE_1__*) ;
 int timer_duty_set_get (int ,int ,int) ;

__attribute__((used)) static void timer_duty_test(ledc_channel_t channel, ledc_timer_bit_t timer_bit, ledc_timer_t timer, ledc_mode_t speed_mode)
{
    ledc_channel_config_t ledc_ch_config = {
        .gpio_num = PULSE_IO,
        .speed_mode = speed_mode,
        .channel = channel,
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
    TEST_ESP_OK(ledc_channel_config(&ledc_ch_config));
    TEST_ESP_OK(ledc_timer_config(&ledc_time_config));


    timer_duty_set_get(ledc_ch_config.speed_mode, ledc_ch_config.channel, 0);
    timer_duty_set_get(ledc_ch_config.speed_mode, ledc_ch_config.channel, 1);
    timer_duty_set_get(ledc_ch_config.speed_mode, ledc_ch_config.channel, 1 << 12);
    timer_duty_set_get(ledc_ch_config.speed_mode, ledc_ch_config.channel, (1 << 13) - 1);
    timer_duty_set_get(ledc_ch_config.speed_mode, ledc_ch_config.channel, (1 << 13) - 2);
}
