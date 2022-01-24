#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_info_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ESP_PARTITION_TABLE_MAX_LEN ; 
 int /*<<< orphan*/  ESP_PARTITION_TABLE_OFFSET ; 
 int /*<<< orphan*/  FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static esp_err_t FUNC5(esp_partition_info_t *partition_table, int *num_partitions)
{
    esp_err_t err;
    /* Check for plaintext partition table */
    err = FUNC2(ESP_PARTITION_TABLE_OFFSET, partition_table, ESP_PARTITION_TABLE_MAX_LEN, false);
    if (err != ESP_OK) {
        FUNC1(TAG, "Failed to read partition table data");
        return err;
    }
    if (FUNC4(partition_table, false, num_partitions) == ESP_OK) {
        FUNC0(TAG, "partition table is plaintext. Encrypting...");
        esp_err_t err = FUNC3(ESP_PARTITION_TABLE_OFFSET,
                                                 FLASH_SECTOR_SIZE);
        if (err != ESP_OK) {
            FUNC1(TAG, "Failed to encrypt partition table in place. %x", err);
            return err;
        }
    }
    else {
        FUNC1(TAG, "Failed to read partition table data - not plaintext?");
        return ESP_ERR_INVALID_STATE;
    }

    /* Valid partition table loded */
    return ESP_OK;
}