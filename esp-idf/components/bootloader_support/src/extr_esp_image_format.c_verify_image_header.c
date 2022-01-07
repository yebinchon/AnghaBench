
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ magic; scalar_t__ spi_mode; scalar_t__ spi_speed; scalar_t__ spi_size; } ;
typedef TYPE_1__ esp_image_header_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_IMAGE_INVALID ;
 int ESP_IMAGE_APPLICATION ;
 scalar_t__ ESP_IMAGE_FLASH_SIZE_MAX ;
 scalar_t__ ESP_IMAGE_HEADER_MAGIC ;
 scalar_t__ ESP_IMAGE_SPI_MODE_SLOW_READ ;
 scalar_t__ ESP_IMAGE_SPI_SPEED_80M ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGW (int ,char*,int ,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ bootloader_common_check_chip_validity (TYPE_1__ const*,int ) ;

__attribute__((used)) static esp_err_t verify_image_header(uint32_t src_addr, const esp_image_header_t *image, bool silent)
{
    esp_err_t err = ESP_OK;

    if (image->magic != ESP_IMAGE_HEADER_MAGIC) {
        if (!silent) {
            ESP_LOGE(TAG, "image at 0x%x has invalid magic byte", src_addr);
        }
        err = ESP_ERR_IMAGE_INVALID;
    }
    if (bootloader_common_check_chip_validity(image, ESP_IMAGE_APPLICATION) != ESP_OK) {
        err = ESP_ERR_IMAGE_INVALID;
    }
    if (!silent) {
        if (image->spi_mode > ESP_IMAGE_SPI_MODE_SLOW_READ) {
            ESP_LOGW(TAG, "image at 0x%x has invalid SPI mode %d", src_addr, image->spi_mode);
        }
        if (image->spi_speed > ESP_IMAGE_SPI_SPEED_80M) {
            ESP_LOGW(TAG, "image at 0x%x has invalid SPI speed %d", src_addr, image->spi_speed);
        }
        if (image->spi_size > ESP_IMAGE_FLASH_SIZE_MAX) {
            ESP_LOGW(TAG, "image at 0x%x has invalid SPI size %d", src_addr, image->spi_size);
        }
    }
    return err;
}
