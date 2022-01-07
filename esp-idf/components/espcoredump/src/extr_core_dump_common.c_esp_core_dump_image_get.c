
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int spi_flash_mmap_handle_t ;
struct TYPE_4__ {int size; size_t address; } ;
typedef TYPE_1__ esp_partition_t ;
typedef scalar_t__ esp_err_t ;
typedef scalar_t__ core_dump_crc_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_SUBTYPE_DATA_COREDUMP ;
 int ESP_PARTITION_TYPE_DATA ;
 int SPI_FLASH_MMAP_DATA ;
 int TAG ;
 scalar_t__ crc32_le (int ,int const*,size_t) ;
 TYPE_1__* esp_partition_find_first (int ,int ,int *) ;
 scalar_t__ esp_partition_mmap (TYPE_1__ const*,int ,size_t,int ,void const**,int *) ;
 int spi_flash_munmap (int ) ;

esp_err_t esp_core_dump_image_get(size_t* out_addr, size_t *out_size)
{
    esp_err_t err;
    const void *core_data;
    spi_flash_mmap_handle_t core_data_handle;

    if (out_addr == ((void*)0) || out_size == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    const esp_partition_t *core_part = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_COREDUMP, ((void*)0));
    if (!core_part) {
        ESP_LOGE(TAG, "No core dump partition found!");
        return ESP_FAIL;
    }
    if (core_part->size < sizeof(uint32_t)) {
        ESP_LOGE(TAG, "Too small core dump partition!");
        return ESP_FAIL;
    }

    err = esp_partition_mmap(core_part, 0, sizeof(uint32_t),
                             SPI_FLASH_MMAP_DATA, &core_data, &core_data_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mmap core dump data (%d)!", err);
        return err;
    }
    uint32_t *dw = (uint32_t *)core_data;
    *out_size = *dw;
    spi_flash_munmap(core_data_handle);


    err = esp_partition_mmap(core_part, 0, *out_size,
                             SPI_FLASH_MMAP_DATA, &core_data, &core_data_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mmap core dump data (%d)!", err);
        return err;
    }
    uint32_t *crc = (uint32_t *)(((uint8_t *)core_data) + *out_size);
    crc--;

    core_dump_crc_t cur_crc = crc32_le(0, (uint8_t const *)core_data, *out_size - sizeof(core_dump_crc_t));
    if (*crc != cur_crc) {
        ESP_LOGE(TAG, "Core dump data CRC check failed: 0x%x -> 0x%x!", *crc, cur_crc);
        spi_flash_munmap(core_data_handle);
        return ESP_FAIL;
    }

    spi_flash_munmap(core_data_handle);

    *out_addr = core_part->address;
    return ESP_OK;
}
