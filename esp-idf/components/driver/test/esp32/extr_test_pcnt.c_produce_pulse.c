
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int freq_hz; int clk_cfg; int duty_resolution; int timer_num; int speed_mode; } ;
typedef TYPE_1__ ledc_timer_config_t ;
struct TYPE_6__ {int duty; int hpoint; int gpio_num; int intr_type; int timer_sel; int channel; int speed_mode; } ;
typedef TYPE_2__ ledc_channel_config_t ;


 int ESP_ERROR_CHECK (int ) ;
 int LEDC_AUTO_CLK ;
 int LEDC_CHANNEL_1 ;
 int LEDC_HIGH_SPEED_MODE ;
 int LEDC_INTR_DISABLE ;
 int LEDC_TIMER_1 ;
 int LEDC_TIMER_10_BIT ;
 int PULSE_IO ;
 int ledc_channel_config (TYPE_2__*) ;
 int ledc_timer_config (TYPE_1__*) ;

__attribute__((used)) static void produce_pulse(void)
{
    ledc_timer_config_t ledc_timer = {
        .speed_mode = LEDC_HIGH_SPEED_MODE,
        .timer_num = LEDC_TIMER_1,
        .duty_resolution = LEDC_TIMER_10_BIT,
        .freq_hz = 1,
        .clk_cfg = LEDC_AUTO_CLK,
    };
    ESP_ERROR_CHECK(ledc_timer_config(&ledc_timer));

    ledc_channel_config_t ledc_channel = {
        .speed_mode = LEDC_HIGH_SPEED_MODE,
        .channel = LEDC_CHANNEL_1,
        .timer_sel = LEDC_TIMER_1,
        .intr_type = LEDC_INTR_DISABLE,
        .gpio_num = PULSE_IO,
        .duty = 100,
        .hpoint = 0,
    };
    ESP_ERROR_CHECK(ledc_channel_config(&ledc_channel));
}
