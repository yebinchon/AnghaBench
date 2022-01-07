
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ledc_timer_t ;
struct TYPE_5__ {scalar_t__ speed_mode; int freq_hz; int clk_cfg; int timer_num; int duty_resolution; } ;
typedef TYPE_1__ ledc_timer_config_t ;
typedef int ledc_timer_bit_t ;
typedef scalar_t__ ledc_mode_t ;
typedef int ledc_channel_t ;
struct TYPE_6__ {scalar_t__ speed_mode; int duty; int timer_sel; int intr_type; int channel; int gpio_num; } ;
typedef TYPE_2__ ledc_channel_config_t ;


 int LEDC_AUTO_CLK ;
 scalar_t__ LEDC_HIGH_SPEED_MODE ;
 int LEDC_INTR_DISABLE ;
 int PULSE_IO ;
 int TEST_ESP_OK (int ) ;
 int frequency_set_get (scalar_t__,int ,int,int,int) ;
 int ledc_channel_config (TYPE_2__*) ;
 int ledc_timer_config (TYPE_1__*) ;

__attribute__((used)) static void timer_frequency_test(ledc_channel_t channel, ledc_timer_bit_t timer_bit, ledc_timer_t timer, ledc_mode_t speed_mode)
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

    if(ledc_ch_config.speed_mode == LEDC_HIGH_SPEED_MODE) {
        frequency_set_get(ledc_ch_config.speed_mode, ledc_ch_config.timer_sel, 100, 100, 2);
        frequency_set_get(ledc_ch_config.speed_mode, ledc_ch_config.timer_sel, 5000, 5000, 5);
        frequency_set_get(ledc_ch_config.speed_mode, ledc_ch_config.timer_sel, 9000, 9025, 5);
    } else {
        frequency_set_get(ledc_ch_config.speed_mode, ledc_ch_config.timer_sel, 10, 10, 1);



    }
}
