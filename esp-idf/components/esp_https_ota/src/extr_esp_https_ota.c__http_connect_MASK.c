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
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static esp_err_t FUNC7(esp_http_client_handle_t http_client)
{
    esp_err_t err = ESP_FAIL;
    int status_code, header_ret;
    do {
        err = FUNC5(http_client, 0);
        if (err != ESP_OK) {
            FUNC0(TAG, "Failed to open HTTP connection: %s", FUNC2(err));
            return err;
        }
        header_ret = FUNC3(http_client);
        if (header_ret < 0) {
            return header_ret;
        }
        status_code = FUNC4(http_client);
        err = FUNC1(http_client, status_code);
        if (err != ESP_OK) {
            return err;
        }
    } while (FUNC6(status_code));
    return err;
}