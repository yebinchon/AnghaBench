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
typedef  int /*<<< orphan*/  esp_partition_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_DATA_FAT ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

esp_err_t FUNC6(const char *base_path, const char* partition_label)
{
    const esp_partition_t *data_partition = FUNC1(ESP_PARTITION_TYPE_DATA,
            ESP_PARTITION_SUBTYPE_DATA_FAT, partition_label);

    if (data_partition == NULL) {
        FUNC0(TAG, "Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.", partition_label);
        return ESP_ERR_NOT_FOUND;
    }

    BYTE pdrv = FUNC4(data_partition);
    if (pdrv == 0xff) {
        return ESP_ERR_INVALID_STATE;
    }
    char drv[3] = {(char)('0' + pdrv), ':', 0};

    FUNC3(0, drv, 0);
    FUNC5(pdrv);
    esp_err_t err = FUNC2(base_path);
    return err;
}