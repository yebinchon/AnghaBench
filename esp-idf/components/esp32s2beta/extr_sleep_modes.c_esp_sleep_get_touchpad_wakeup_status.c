
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int touch_pad_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ ESP_SLEEP_WAKEUP_TOUCHPAD ;
 int TOUCH_PAD_MAX ;
 int assert (int ) ;
 scalar_t__ esp_sleep_get_wakeup_cause () ;
 scalar_t__ touch_pad_get_wakeup_status (int *) ;

touch_pad_t esp_sleep_get_touchpad_wakeup_status(void)
{
    if (esp_sleep_get_wakeup_cause() != ESP_SLEEP_WAKEUP_TOUCHPAD) {
        return TOUCH_PAD_MAX;
    }
    touch_pad_t pad_num;
    esp_err_t ret = touch_pad_get_wakeup_status(&pad_num);
    assert(ret == ESP_OK && "wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero");
    return pad_num;
}
