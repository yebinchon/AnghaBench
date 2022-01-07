
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_flash_t ;


 int ESP_LOGI (int ,char*,int *) ;
 scalar_t__ SPI_FLASH_SEC_SIZE ;
 int TAG ;
 int TEST_ASSERT (int) ;
 TYPE_1__* get_test_data_partition () ;
 int read_and_check (int *,TYPE_1__ const*,int const*,size_t) ;
 int write_large_buffer (int *,TYPE_1__ const*,int const*,size_t) ;

__attribute__((used)) static void test_write_large_buffer(esp_flash_t *chip, const uint8_t *source, size_t length)
{
    ESP_LOGI(TAG, "Testing chip %p...", chip);
    const esp_partition_t *part = get_test_data_partition();
    TEST_ASSERT(part->size > length + 2 + SPI_FLASH_SEC_SIZE);

    write_large_buffer(chip, part, source, length);
    read_and_check(chip, part, source, length);
}
