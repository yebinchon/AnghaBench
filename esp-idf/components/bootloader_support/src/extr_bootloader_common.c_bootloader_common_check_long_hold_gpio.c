
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int esp_comm_gpio_hold_t ;


 int GPIO_INPUT_GET (size_t) ;
 int GPIO_LONG_HOLD ;
 int GPIO_NOT_HOLD ;
 scalar_t__* GPIO_PIN_MUX_REG ;
 int GPIO_SHORT_HOLD ;
 int PIN_INPUT_ENABLE (scalar_t__) ;
 size_t esp_log_early_timestamp () ;
 int gpio_pad_pullup (size_t) ;
 int gpio_pad_select_gpio (size_t) ;

esp_comm_gpio_hold_t bootloader_common_check_long_hold_gpio(uint32_t num_pin, uint32_t delay_sec)
{
    gpio_pad_select_gpio(num_pin);
    if (GPIO_PIN_MUX_REG[num_pin]) {
        PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[num_pin]);
    }
    gpio_pad_pullup(num_pin);
    uint32_t tm_start = esp_log_early_timestamp();
    if (GPIO_INPUT_GET(num_pin) == 1) {
        return GPIO_NOT_HOLD;
    }
    do {
        if (GPIO_INPUT_GET(num_pin) != 0) {
            return GPIO_SHORT_HOLD;
        }
    } while (delay_sec > ((esp_log_early_timestamp() - tm_start) / 1000L));
    return GPIO_LONG_HOLD;
}
