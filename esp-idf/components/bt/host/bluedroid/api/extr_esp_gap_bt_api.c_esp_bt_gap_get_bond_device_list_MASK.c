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
typedef  int /*<<< orphan*/  esp_bd_addr_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;

/* Variables and functions */
 int BT_STATUS_SUCCESS ; 
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

esp_err_t FUNC3(int *dev_num, esp_bd_addr_t *dev_list)
{
    int ret;
    int dev_num_total;

    if (dev_num == NULL || dev_list == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    if (FUNC2() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    dev_num_total = FUNC1();
    if (*dev_num > dev_num_total) {
        *dev_num = dev_num_total;
    }

    ret = FUNC0((bt_bdaddr_t *)dev_list, *dev_num);

    return (ret == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}