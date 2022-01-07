
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; int subtype; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int TAG ;
 int TEST_ASSERT_NOT_EQUAL (int *,TYPE_1__ const*) ;
 TYPE_1__* esp_ota_get_next_update_partition (int *) ;

__attribute__((used)) static const esp_partition_t * get_next_update_partition(void)
{
    const esp_partition_t *update_partition = esp_ota_get_next_update_partition(((void*)0));
    TEST_ASSERT_NOT_EQUAL(((void*)0), update_partition);
    ESP_LOGI(TAG, "Writing to partition subtype %d at offset 0x%x", update_partition->subtype, update_partition->address);
    return update_partition;
}
