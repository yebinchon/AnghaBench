#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* url; char* cert_pem; int skip_cert_common_name_check; int /*<<< orphan*/  event_handler; } ;
typedef  TYPE_1__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 char* CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int OTA_URL_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _http_event_handler ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ server_cert_pem_start ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void *pvParameter)
{
    FUNC1(TAG, "Starting OTA example");

    esp_http_client_config_t config = {
        .url = CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL,
        .cert_pem = (char *)server_cert_pem_start,
        .event_handler = _http_event_handler,
    };

#ifdef CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL_FROM_STDIN
    char url_buf[OTA_URL_SIZE];
    if (strcmp(config.url, "FROM_STDIN") == 0) {
        example_configure_stdin_stdout();
        fgets(url_buf, OTA_URL_SIZE, stdin);
        int len = strlen(url_buf);
        url_buf[len - 1] = '\0';
        config.url = url_buf;
    } else {
        ESP_LOGE(TAG, "Configuration mismatch: wrong firmware upgrade image url");
        abort();
    }
#endif

#ifdef CONFIG_EXAMPLE_SKIP_COMMON_NAME_CHECK
    config.skip_cert_common_name_check = true;
#endif

    esp_err_t ret = FUNC3(&config);
    if (ret == ESP_OK) {
        FUNC4();
    } else {
        FUNC0(TAG, "Firmware upgrade failed");
    }
    while (1) {
        FUNC9(1000 / portTICK_PERIOD_MS);
    }
}