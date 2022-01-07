
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 scalar_t__ ESP_OK ;
 int GPIO_MODE_DEF_INPUT ;
 int GPIO_NUM_0 ;
 char* esp_err_to_name (scalar_t__) ;
 int esp_restart () ;
 int fflush (int ) ;
 scalar_t__ gpio_get_level (int ) ;
 int gpio_pad_select_gpio (int ) ;
 int gpio_set_direction (int ,int ) ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int portTICK_PERIOD_MS ;
 scalar_t__ print_what_saved () ;
 int printf (char*,...) ;
 scalar_t__ save_restart_counter () ;
 scalar_t__ save_run_time () ;
 int stdout ;
 int vTaskDelay (int) ;

void app_main(void)
{
    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {


        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    ESP_ERROR_CHECK( err );

    err = print_what_saved();
    if (err != ESP_OK) printf("Error (%s) reading data from NVS!\n", esp_err_to_name(err));

    err = save_restart_counter();
    if (err != ESP_OK) printf("Error (%s) saving restart counter to NVS!\n", esp_err_to_name(err));

    gpio_pad_select_gpio(GPIO_NUM_0);
    gpio_set_direction(GPIO_NUM_0, GPIO_MODE_DEF_INPUT);




    while (1) {
        if (gpio_get_level(GPIO_NUM_0) == 0) {
            vTaskDelay(1000 / portTICK_PERIOD_MS);
            if(gpio_get_level(GPIO_NUM_0) == 0) {
                err = save_run_time();
                if (err != ESP_OK) printf("Error (%s) saving run time blob to NVS!\n", esp_err_to_name(err));
                printf("Restarting...\n");
                fflush(stdout);
                esp_restart();
            }
        }
        vTaskDelay(200 / portTICK_PERIOD_MS);
    }
}
