
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;
struct TYPE_12__ {scalar_t__ crc; } ;
typedef TYPE_2__ esp_ota_select_entry_t ;
typedef int corrupt_ota_data_t ;


 int CORR_CRC_1_SECTOR_OTA_DATA ;
 int CORR_CRC_2_SECTOR_OTA_DATA ;
 int ESP_PARTITION_SUBTYPE_DATA_OTA ;
 int ESP_PARTITION_TYPE_DATA ;
 int TEST_ASSERT_NOT_EQUAL (int *,TYPE_1__ const*) ;
 int TEST_ESP_OK (int ) ;
 int esp_partition_erase_range (TYPE_1__ const*,int ,int ) ;
 TYPE_1__* esp_partition_find_first (int ,int ,int *) ;
 int get_ota_data (TYPE_1__ const*,TYPE_2__*,TYPE_2__*) ;
 int write_ota_data (TYPE_1__ const*,TYPE_2__*,int) ;

__attribute__((used)) static void corrupt_ota_data(corrupt_ota_data_t err)
{
    esp_ota_select_entry_t ota_data[2];

    const esp_partition_t *otadata_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_OTA, ((void*)0));
    TEST_ASSERT_NOT_EQUAL(((void*)0), otadata_partition);
    get_ota_data(otadata_partition, &ota_data[0], &ota_data[1]);

    if (err & CORR_CRC_1_SECTOR_OTA_DATA) {
        ota_data[0].crc = 0;
    }
    if (err & CORR_CRC_2_SECTOR_OTA_DATA) {
        ota_data[1].crc = 0;
    }
    TEST_ESP_OK(esp_partition_erase_range(otadata_partition, 0, otadata_partition->size));
    write_ota_data(otadata_partition, &ota_data[0], 0);
    write_ota_data(otadata_partition, &ota_data[1], 1);
}
