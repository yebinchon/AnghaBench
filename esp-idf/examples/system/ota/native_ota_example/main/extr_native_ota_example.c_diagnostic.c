
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long pin_bit_mask; int pull_up_en; int pull_down_en; int mode; int intr_type; } ;
typedef TYPE_1__ gpio_config_t ;


 unsigned long long CONFIG_EXAMPLE_GPIO_DIAGNOSTIC ;
 int ESP_LOGI (int ,char*) ;
 int GPIO_MODE_INPUT ;
 int GPIO_PIN_INTR_DISABLE ;
 int GPIO_PULLDOWN_DISABLE ;
 int GPIO_PULLUP_ENABLE ;
 int TAG ;
 int gpio_config (TYPE_1__*) ;
 int gpio_get_level (unsigned long long) ;
 int gpio_reset_pin (unsigned long long) ;
 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static bool diagnostic(void)
{
    gpio_config_t io_conf;
    io_conf.intr_type = GPIO_PIN_INTR_DISABLE;
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pin_bit_mask = (1ULL << CONFIG_EXAMPLE_GPIO_DIAGNOSTIC);
    io_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
    io_conf.pull_up_en = GPIO_PULLUP_ENABLE;
    gpio_config(&io_conf);

    ESP_LOGI(TAG, "Diagnostics (5 sec)...");
    vTaskDelay(5000 / portTICK_PERIOD_MS);

    bool diagnostic_is_ok = gpio_get_level(CONFIG_EXAMPLE_GPIO_DIAGNOSTIC);

    gpio_reset_pin(CONFIG_EXAMPLE_GPIO_DIAGNOSTIC);
    return diagnostic_is_ok;
}
