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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_INVALID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC9(sdmmc_card_t* card)
{
    const size_t cis_buffer_size = 256;
    uint8_t cis_buffer[cis_buffer_size];
    size_t cis_data_len = 1024; //specify maximum searching range to avoid infinite loop
    esp_err_t ret = ESP_OK;

    ret = FUNC7(card, cis_buffer, cis_buffer_size, &cis_data_len);
    if (ret == ESP_ERR_INVALID_SIZE) {
        int temp_buf_size = cis_data_len;
        uint8_t* temp_buf = FUNC6(temp_buf_size);
        FUNC4(temp_buf);

        FUNC2(TAG, "CIS data longer than expected, temporary buffer allocated.");
        ret = FUNC7(card, temp_buf, temp_buf_size, &cis_data_len);
        FUNC0(ret);

        FUNC8(temp_buf, cis_data_len, NULL);

        FUNC5(temp_buf);
    } else if (ret == ESP_OK) {
        FUNC8(cis_buffer, cis_data_len, NULL);
    } else {
        //including ESP_ERR_NOT_FOUND
        FUNC1(TAG, "failed to get the entire CIS data.");
        FUNC3();
    }
    return ESP_OK;
}