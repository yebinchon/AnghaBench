
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int abort () ;
 int bootloader_random_disable () ;
 int bootloader_reset () ;
 scalar_t__ esp_flash_encrypt_check_and_update () ;
 int esp_flash_encryption_enabled () ;
 scalar_t__ esp_secure_boot_generate_digest () ;
 scalar_t__ esp_secure_boot_permanently_enable () ;
 int uart_tx_wait_idle (int ) ;
 int unpack_load_app (int const*) ;

__attribute__((used)) static void load_image(const esp_image_metadata_t *image_data)
{
    ESP_LOGI(TAG, "Disabling RNG early entropy source...");
    bootloader_random_disable();


    unpack_load_app(image_data);
}
