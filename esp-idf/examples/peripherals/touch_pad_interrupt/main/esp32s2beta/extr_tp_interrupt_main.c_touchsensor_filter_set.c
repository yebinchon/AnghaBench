
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int touch_filter_mode_t ;
struct TYPE_3__ {int debounce_cnt; int hysteresis_thr; int noise_thr; int noise_neg_thr; int neg_noise_limit; int jitter_step; int mode; } ;
typedef TYPE_1__ touch_filter_config_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int TOUCH_PAD_MAX ;
 int touch_pad_filter_baseline_reset (int ) ;
 int touch_pad_filter_enable () ;
 int touch_pad_filter_set_config (TYPE_1__*) ;

__attribute__((used)) static void touchsensor_filter_set(touch_filter_mode_t mode)
{

    touch_filter_config_t filter_info = {
        .mode = mode,
        .debounce_cnt = 1,
        .hysteresis_thr = 1,
        .noise_thr = 1,
        .noise_neg_thr = 1,
        .neg_noise_limit = 10,
        .jitter_step = 4,
    };
    touch_pad_filter_set_config(&filter_info);
    touch_pad_filter_enable();
    touch_pad_filter_baseline_reset(TOUCH_PAD_MAX);
    ESP_LOGI(TAG, "touch pad filter init %d", mode);
}
