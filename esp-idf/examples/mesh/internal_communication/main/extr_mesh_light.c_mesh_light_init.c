
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int freq_hz; int speed_mode; int clk_cfg; int timer_num; int duty_resolution; } ;
typedef TYPE_1__ ledc_timer_config_t ;
struct TYPE_6__ {int duty; int gpio_num; int channel; int hpoint; int timer_sel; int speed_mode; int intr_type; } ;
typedef TYPE_2__ ledc_channel_config_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int LEDC_AUTO_CLK ;
 int LEDC_CHANNEL_0 ;
 int LEDC_CHANNEL_1 ;
 int LEDC_CHANNEL_2 ;
 int LEDC_CHANNEL_3 ;
 int LEDC_HIGH_SPEED_MODE ;
 int LEDC_INTR_FADE_END ;
 int LEDC_IO_0 ;
 int LEDC_IO_1 ;
 int LEDC_IO_2 ;
 int LEDC_IO_3 ;
 int LEDC_LOW_SPEED_MODE ;
 int LEDC_TIMER_0 ;
 int LEDC_TIMER_13_BIT ;
 int MESH_LIGHT_INIT ;
 int ledc_channel_config (TYPE_2__*) ;
 int ledc_fade_func_install (int ) ;
 int ledc_timer_config (TYPE_1__*) ;
 int mesh_light_set (int ) ;
 int s_light_inited ;

esp_err_t mesh_light_init(void)
{
    if (s_light_inited == 1) {
        return ESP_OK;
    }
    s_light_inited = 1;

    ledc_timer_config_t ledc_timer = {
        .duty_resolution = LEDC_TIMER_13_BIT,
        .freq_hz = 5000,
        .speed_mode = LEDC_LOW_SPEED_MODE,
        .timer_num = LEDC_TIMER_0,
        .clk_cfg = LEDC_AUTO_CLK,
    };



    ledc_timer_config(&ledc_timer);

    ledc_channel_config_t ledc_channel = {
        .channel = LEDC_CHANNEL_0,
        .duty = 100,
        .gpio_num = LEDC_IO_0,
        .intr_type = LEDC_INTR_FADE_END,
        .speed_mode = LEDC_LOW_SPEED_MODE,
        .timer_sel = LEDC_TIMER_0,
        .hpoint = 0,
    };
    ledc_channel_config(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_1;
    ledc_channel.gpio_num = LEDC_IO_1;
    ledc_channel_config(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_2;
    ledc_channel.gpio_num = LEDC_IO_2;
    ledc_channel_config(&ledc_channel);
    ledc_channel.channel = LEDC_CHANNEL_3;
    ledc_channel.gpio_num = LEDC_IO_3;
    ledc_channel_config(&ledc_channel);
    ledc_fade_func_install(0);

    mesh_light_set(MESH_LIGHT_INIT);
    return ESP_OK;
}
