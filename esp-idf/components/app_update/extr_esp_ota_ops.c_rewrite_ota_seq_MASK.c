#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  esp_partition_t ;
struct TYPE_5__ {int /*<<< orphan*/  crc; int /*<<< orphan*/  ota_seq; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_OK ; 
 int SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,TYPE_1__*,int) ; 

__attribute__((used)) static esp_err_t FUNC3(esp_ota_select_entry_t *two_otadata, uint32_t seq, uint8_t sec_id, const esp_partition_t *ota_data_partition)
{
    if (two_otadata == NULL || sec_id > 1) {
        return ESP_ERR_INVALID_ARG;
    }

    two_otadata[sec_id].ota_seq = seq;
    two_otadata[sec_id].crc = FUNC0(&two_otadata[sec_id]);
    esp_err_t ret = FUNC1(ota_data_partition, sec_id * SPI_FLASH_SEC_SIZE, SPI_FLASH_SEC_SIZE);
    if (ret != ESP_OK) {
        return ret;
    } else {
        return FUNC2(ota_data_partition, SPI_FLASH_SEC_SIZE * sec_id, &two_otadata[sec_id], sizeof(esp_ota_select_entry_t));
    }
}