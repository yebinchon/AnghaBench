
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spi_flash_mmap_handle_t ;
struct TYPE_4__ {size_t size; scalar_t__ flash_chip; scalar_t__ address; int encrypted; } ;
typedef TYPE_1__ esp_partition_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_SIZE ;
 scalar_t__ ESP_ERR_NOT_SUPPORTED ;
 scalar_t__ ESP_OK ;
 int SPI_FLASH_MMAP_DATA ;
 int assert (int ) ;
 scalar_t__ esp_flash_default_chip ;
 scalar_t__ esp_flash_read (scalar_t__,void*,scalar_t__,size_t) ;
 scalar_t__ esp_partition_mmap (TYPE_1__ const*,size_t,size_t,int ,void const**,int *) ;
 int memcpy (void*,void const*,size_t) ;
 int spi_flash_munmap (int ) ;
 scalar_t__ spi_flash_read (scalar_t__,void*,size_t) ;

esp_err_t esp_partition_read(const esp_partition_t* partition,
        size_t src_offset, void* dst, size_t size)
{
    assert(partition != ((void*)0));
    if (src_offset > partition->size) {
        return ESP_ERR_INVALID_ARG;
    }
    if (src_offset + size > partition->size) {
        return ESP_ERR_INVALID_SIZE;
    }

    if (!partition->encrypted) {

        return esp_flash_read(partition->flash_chip, dst, partition->address + src_offset, size);



    } else {
        return ESP_ERR_NOT_SUPPORTED;

    }
}
