
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cores; int features; int revision; } ;
typedef TYPE_1__ esp_chip_info_t ;


 int CHIP_FEATURE_BLE ;
 int CHIP_FEATURE_BT ;
 int CHIP_FEATURE_EMB_FLASH ;
 int esp_chip_info (TYPE_1__*) ;
 int esp_restart () ;
 int fflush (int ) ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int spi_flash_get_chip_size () ;
 int stdout ;
 int vTaskDelay (int) ;

void app_main(void)
{
    printf("Hello world!\n");


    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);
    printf("This is ESP32 chip with %d CPU cores, WiFi%s%s, ",
            chip_info.cores,
            (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
            (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

    printf("silicon revision %d, ", chip_info.revision);

    printf("%dMB %s flash\n", spi_flash_get_chip_size() / (1024 * 1024),
            (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

    for (int i = 10; i >= 0; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    printf("Restarting now.\n");
    fflush(stdout);
    esp_restart();
}
