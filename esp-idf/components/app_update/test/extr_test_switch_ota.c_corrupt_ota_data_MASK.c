#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ esp_partition_t ;
struct TYPE_12__ {scalar_t__ crc; } ;
typedef  TYPE_2__ esp_ota_select_entry_t ;
typedef  int corrupt_ota_data_t ;

/* Variables and functions */
 int CORR_CRC_1_SECTOR_OTA_DATA ; 
 int CORR_CRC_2_SECTOR_OTA_DATA ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_DATA_OTA ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(corrupt_ota_data_t err)
{
    esp_ota_select_entry_t ota_data[2];

    const esp_partition_t *otadata_partition = FUNC3(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_OTA, NULL);
    FUNC0(NULL, otadata_partition);
    FUNC4(otadata_partition, &ota_data[0], &ota_data[1]);

    if (err & CORR_CRC_1_SECTOR_OTA_DATA) {
        ota_data[0].crc = 0;
    }
    if (err & CORR_CRC_2_SECTOR_OTA_DATA) {
        ota_data[1].crc = 0;
    }
    FUNC1(FUNC2(otadata_partition, 0, otadata_partition->size));
    FUNC5(otadata_partition, &ota_data[0], 0);
    FUNC5(otadata_partition, &ota_data[1], 1);
}