
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ address; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_flash_t ;


 int ESP_ERROR_CHECK (int ) ;
 size_t SPI_FLASH_SEC_SIZE ;
 int esp_flash_erase_region (int *,scalar_t__,size_t) ;
 int esp_flash_write (int *,int const*,scalar_t__,size_t) ;
 int printf (char*,int *,size_t,int const*) ;

__attribute__((used)) static void write_large_buffer(esp_flash_t *chip, const esp_partition_t *part, const uint8_t *source, size_t length)
{
    printf("Writing chip %p, %d bytes from source %p\n", chip, length, source);

    ESP_ERROR_CHECK( esp_flash_erase_region(chip, part->address, (length + SPI_FLASH_SEC_SIZE) & ~(SPI_FLASH_SEC_SIZE - 1)) );


    ESP_ERROR_CHECK( esp_flash_write(chip, source, part->address + 1, length) );
}
