
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; int size; char* label; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_PARTITION_SUBTYPE_DATA_FAT ;
 int ESP_PARTITION_TYPE_DATA ;
 int FLASH_ERASE_SIZE ;
 int PARTITION_NAME ;
 int esp_partition_erase_range (TYPE_1__ const*,int ,int) ;
 TYPE_1__* esp_partition_find_first (int ,int ,int ) ;
 int printf (char*,...) ;

void example_erase_flash(void)
{
    printf("Skip flash erasing...\n");

}
