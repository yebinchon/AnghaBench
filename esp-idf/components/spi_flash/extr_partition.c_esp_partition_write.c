
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; size_t address; scalar_t__ flash_chip; int encrypted; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_SIZE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int assert (int ) ;
 scalar_t__ esp_flash_default_chip ;
 int esp_flash_write (scalar_t__,void const*,size_t,size_t) ;
 int spi_flash_write (size_t,void const*,size_t) ;
 int spi_flash_write_encrypted (size_t,void const*,size_t) ;

esp_err_t esp_partition_write(const esp_partition_t* partition,
                             size_t dst_offset, const void* src, size_t size)
{
    assert(partition != ((void*)0));
    if (dst_offset > partition->size) {
        return ESP_ERR_INVALID_ARG;
    }
    if (dst_offset + size > partition->size) {
        return ESP_ERR_INVALID_SIZE;
    }
    dst_offset = partition->address + dst_offset;
    if (!partition->encrypted) {

        return esp_flash_write(partition->flash_chip, src, dst_offset, size);



    } else {






        return ESP_ERR_NOT_SUPPORTED;

    }
}
