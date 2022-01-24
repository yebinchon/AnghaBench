#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ address; scalar_t__ size; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_ota_select_entry_t ;

/* Variables and functions */
 int SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC4(const esp_partition_t *otadata_partition, esp_ota_select_entry_t *ota_data_0, esp_ota_select_entry_t *ota_data_1)
{
    uint32_t offset = otadata_partition->address;
    uint32_t size   = otadata_partition->size;
    if (offset != 0) {
        const esp_ota_select_entry_t *ota_select_map;
        ota_select_map = FUNC1(offset, size);
        FUNC0(NULL, ota_select_map);

        FUNC3(ota_data_0, ota_select_map, sizeof(esp_ota_select_entry_t));
        FUNC3(ota_data_1, (uint8_t *)ota_select_map + SPI_FLASH_SEC_SIZE, sizeof(esp_ota_select_entry_t));
        FUNC2(ota_select_map);
    }
}