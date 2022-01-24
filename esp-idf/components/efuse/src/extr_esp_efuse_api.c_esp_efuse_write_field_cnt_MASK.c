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
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  esp_efuse_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ESP_ERR_EFUSE_CNT_IS_FULL ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_OK_EFUSE_CNT ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  esp_efuse_utility_write_cnt ; 
 int s_batch_writing_mode ; 

esp_err_t FUNC7(const esp_efuse_desc_t* field[], size_t cnt)
{
    FUNC0();
    esp_err_t err = ESP_OK;
    if (field == NULL || cnt == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        if (s_batch_writing_mode == false) {
            FUNC6();
        }
        err = FUNC5(field, &cnt, 0, esp_efuse_utility_write_cnt);

        if (cnt != 0) {
            FUNC2(TAG, "The required number of bits can not be set. [Not set %d]", cnt);
            err = ESP_ERR_EFUSE_CNT_IS_FULL;
        }
        if (err == ESP_OK_EFUSE_CNT) {
            err = ESP_OK;
        }

        if (s_batch_writing_mode == false) {
            if (err == ESP_OK) {
                err = FUNC3();
                if (err == ESP_OK) {
                    FUNC4();
                }
            }
            FUNC6();
        }
    }
    FUNC1();
    return err;
}