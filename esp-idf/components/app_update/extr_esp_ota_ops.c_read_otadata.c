
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int spi_flash_mmap_handle_t ;
struct TYPE_5__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_select_entry_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_SUBTYPE_DATA_OTA ;
 int ESP_PARTITION_TYPE_DATA ;
 int SPI_FLASH_MMAP_DATA ;
 int SPI_FLASH_SEC_SIZE ;
 int TAG ;
 TYPE_1__* esp_partition_find_first (int ,int ,int *) ;
 scalar_t__ esp_partition_mmap (TYPE_1__ const*,int ,int ,int ,void const**,int *) ;
 int memcpy (int *,void const*,int) ;
 int spi_flash_munmap (int ) ;

__attribute__((used)) static const esp_partition_t *read_otadata(esp_ota_select_entry_t *two_otadata)
{
    const esp_partition_t *otadata_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_OTA, ((void*)0));

    if (otadata_partition == ((void*)0)) {
        ESP_LOGE(TAG, "not found otadata");
        return ((void*)0);
    }

    spi_flash_mmap_handle_t ota_data_map;
    const void *result = ((void*)0);
    esp_err_t err = esp_partition_mmap(otadata_partition, 0, otadata_partition->size, SPI_FLASH_MMAP_DATA, &result, &ota_data_map);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "mmap otadata filed. Err=0x%8x", err);
        return ((void*)0);
    } else {
        memcpy(&two_otadata[0], result, sizeof(esp_ota_select_entry_t));
        memcpy(&two_otadata[1], result + SPI_FLASH_SEC_SIZE, sizeof(esp_ota_select_entry_t));
        spi_flash_munmap(ota_data_map);
    }
    return otadata_partition;
}
