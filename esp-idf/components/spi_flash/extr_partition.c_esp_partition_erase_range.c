
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; scalar_t__ address; int flash_chip; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_SIZE ;
 size_t SPI_FLASH_SEC_SIZE ;
 int assert (int ) ;
 int esp_flash_erase_region (int ,scalar_t__,size_t) ;
 int spi_flash_erase_range (scalar_t__,size_t) ;

esp_err_t esp_partition_erase_range(const esp_partition_t* partition,
                                    size_t offset, size_t size)
{
    assert(partition != ((void*)0));
    if (offset > partition->size) {
        return ESP_ERR_INVALID_ARG;
    }
    if (offset + size > partition->size) {
        return ESP_ERR_INVALID_SIZE;
    }
    if (size % SPI_FLASH_SEC_SIZE != 0) {
        return ESP_ERR_INVALID_SIZE;
    }
    if (offset % SPI_FLASH_SEC_SIZE != 0) {
        return ESP_ERR_INVALID_ARG;
    }

    return esp_flash_erase_region(partition->flash_chip, partition->address + offset, size);



}
