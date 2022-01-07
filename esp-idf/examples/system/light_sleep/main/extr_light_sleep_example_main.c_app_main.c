
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int mode; int pin_bit_mask; } ;
typedef TYPE_1__ gpio_config_t ;


 int BIT64 (int const) ;
 int BUTTON_GPIO_NUM_DEFAULT ;
 int BUTTON_WAKEUP_LEVEL_DEFAULT ;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int ESP_ERROR_CHECK (int ) ;


 int GPIO_INTR_HIGH_LEVEL ;
 int GPIO_INTR_LOW_LEVEL ;
 int GPIO_MODE_INPUT ;
 int esp_light_sleep_start () ;
 int esp_sleep_enable_gpio_wakeup () ;
 int esp_sleep_enable_timer_wakeup (int) ;
 int esp_sleep_get_wakeup_cause () ;
 int esp_timer_get_time () ;
 int gpio_config (TYPE_1__*) ;
 int gpio_wakeup_enable (int const,int ) ;
 int pdMS_TO_TICKS (int) ;
 int printf (char*,...) ;
 int const rtc_gpio_get_level (int const) ;
 int uart_wait_tx_idle_polling (int ) ;
 int vTaskDelay (int ) ;

void app_main(void)
{

    const int button_gpio_num = BUTTON_GPIO_NUM_DEFAULT;
    const int wakeup_level = BUTTON_WAKEUP_LEVEL_DEFAULT;
    gpio_config_t config = {
            .pin_bit_mask = BIT64(button_gpio_num),
            .mode = GPIO_MODE_INPUT
    };
    ESP_ERROR_CHECK(gpio_config(&config));
    gpio_wakeup_enable(button_gpio_num,
            wakeup_level == 0 ? GPIO_INTR_LOW_LEVEL : GPIO_INTR_HIGH_LEVEL);

    while (1) {

        esp_sleep_enable_timer_wakeup(2000000);
        esp_sleep_enable_gpio_wakeup();


        if (rtc_gpio_get_level(button_gpio_num) == wakeup_level) {
            printf("Waiting for GPIO%d to go high...\n", button_gpio_num);
            do {
                vTaskDelay(pdMS_TO_TICKS(10));
            } while (rtc_gpio_get_level(button_gpio_num) == wakeup_level);
        }

        printf("Entering light sleep\n");



        uart_wait_tx_idle_polling(CONFIG_ESP_CONSOLE_UART_NUM);


        int64_t t_before_us = esp_timer_get_time();


        esp_light_sleep_start();



        int64_t t_after_us = esp_timer_get_time();


        const char* wakeup_reason;
        switch (esp_sleep_get_wakeup_cause()) {
            case 128:
                wakeup_reason = "timer";
                break;
            case 129:
                wakeup_reason = "pin";
                break;
            default:
                wakeup_reason = "other";
                break;
        }

        printf("Returned from light sleep, reason: %s, t=%lld ms, slept for %lld ms\n",
                wakeup_reason, t_after_us / 1000, (t_after_us - t_before_us) / 1000);
    }

}
