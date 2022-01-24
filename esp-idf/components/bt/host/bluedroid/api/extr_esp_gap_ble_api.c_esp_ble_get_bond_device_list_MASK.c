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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_ble_bond_dev_t ;

/* Variables and functions */
 int BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 () ; 

esp_err_t FUNC3(int *dev_num, esp_ble_bond_dev_t *dev_list)
{
    int ret;
    int dev_num_total;

    if (dev_num == NULL || dev_list == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    FUNC0(ESP_BLUEDROID_STATUS_ENABLED);

    dev_num_total = FUNC2();
    if (*dev_num > dev_num_total) {
        *dev_num = dev_num_total;
    }

    ret = FUNC1(dev_list, *dev_num);

    return (ret == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}