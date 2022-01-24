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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_ERR_NVS_TYPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,char*,size_t) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC6(nvs_handle_t nvs, const char *key, const char *str_values)
{
    uint8_t value;
    size_t str_len = FUNC5(str_values);
    size_t blob_len = str_len / 2;

    if (str_len % 2) {
        FUNC0(TAG, "Blob data must contain even number of characters");
        return ESP_ERR_NVS_TYPE_MISMATCH;
    }

    char *blob = (char *)FUNC2(blob_len);
    if (blob == NULL) {
        return ESP_ERR_NO_MEM;
    }

    for (int i = 0, j = 0; i < str_len; i++) {
        char ch = str_values[i];
        if (ch >= '0' && ch <= '9') {
            value = ch - '0';
        } else if (ch >= 'A' && ch <= 'F') {
            value = ch - 'A' + 10;
        } else if (ch >= 'a' && ch <= 'f') {
            value = ch - 'a' + 10;
        } else {
            FUNC0(TAG, "Blob data contain invalid character");
            FUNC1(blob);
            return ESP_ERR_NVS_TYPE_MISMATCH;
        }

        if (i & 1) {
            blob[j++] += value;
        } else {
            blob[j] = value << 4;
        }
    }

    esp_err_t err = FUNC4(nvs, key, blob, blob_len);
    FUNC1(blob);

    if (err == ESP_OK) {
        err = FUNC3(nvs);
    }

    return err;
}