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
typedef  int /*<<< orphan*/  esp_http_client_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int DEFAULT_OTA_BUF_SIZE ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int HttpStatus_Found ; 
 int HttpStatus_MovedPermanently ; 
 int HttpStatus_Unauthorized ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static esp_err_t FUNC5(esp_http_client_handle_t http_client, int status_code)
{
    esp_err_t err;
    if (status_code == HttpStatus_MovedPermanently || status_code == HttpStatus_Found) {
        err = FUNC3(http_client);
        if (err != ESP_OK) {
            FUNC0(TAG, "URL redirection Failed");
            return err;
        }
    } else if (status_code == HttpStatus_Unauthorized) {
        FUNC1(http_client);
    }
    
    char upgrade_data_buf[DEFAULT_OTA_BUF_SIZE];
    if (FUNC4(status_code)) {
        while (1) {
            int data_read = FUNC2(http_client, upgrade_data_buf, DEFAULT_OTA_BUF_SIZE);
            if (data_read < 0) {
                FUNC0(TAG, "Error: SSL data read error");
                return ESP_FAIL;
            } else if (data_read == 0) {
                return ESP_OK;
            }
        }
    }
    return ESP_OK;
}