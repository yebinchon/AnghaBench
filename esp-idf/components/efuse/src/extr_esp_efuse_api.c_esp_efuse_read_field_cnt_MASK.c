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
typedef  int /*<<< orphan*/  esp_efuse_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  esp_efuse_utility_count_once ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC3(const esp_efuse_desc_t* field[], size_t* out_cnt)
{
    FUNC0();
    esp_err_t err = ESP_OK;
    if (field == NULL || out_cnt == NULL) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        *out_cnt = 0;
        err = FUNC2(field, out_cnt, 0, esp_efuse_utility_count_once);
    }
    FUNC1();
    return err;
}