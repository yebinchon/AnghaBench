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
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const**,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  esp_efuse_utility_write_blob ; 
 int s_batch_writing_mode ; 

esp_err_t FUNC6(const esp_efuse_desc_t* field[], const void* src, size_t src_size_bits)
{
    FUNC0();
    esp_err_t err = ESP_OK;
    if (field == NULL || src == NULL || src_size_bits == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        if (s_batch_writing_mode == false) {
            FUNC5();
        }
        err = FUNC4(field, (void*)src, src_size_bits, esp_efuse_utility_write_blob);

        if (s_batch_writing_mode == false) {
            if (err == ESP_OK) {
                err = FUNC2();
                if (err == ESP_OK) {
                    FUNC3();
                }
            }
            FUNC5();
        }
    }
    FUNC1();
    return err;
}