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
typedef  int /*<<< orphan*/  esp_http_client_handle_t ;
struct TYPE_3__ {char* host; char* path; int /*<<< orphan*/  cert_pem; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  transport_type; } ;
typedef  TYPE_1__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HTTP_TRANSPORT_OVER_SSL ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _http_event_handler ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  howsmyssl_com_root_cert_pem_start ; 

__attribute__((used)) static void FUNC8(void)
{
    esp_http_client_config_t config = {
        .host = "www.howsmyssl.com",
        .path = "/",
        .transport_type = HTTP_TRANSPORT_OVER_SSL,
        .event_handler = _http_event_handler,
        .cert_pem = howsmyssl_com_root_cert_pem_start,
    };
    esp_http_client_handle_t client = FUNC6(&config);
    esp_err_t err = FUNC7(client);

    if (err == ESP_OK) {
        FUNC1(TAG, "HTTPS Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "Error perform http request %s", FUNC2(err));
    }
    FUNC3(client);
}