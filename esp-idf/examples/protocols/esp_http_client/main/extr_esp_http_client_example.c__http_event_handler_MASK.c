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
struct TYPE_3__ {int event_id; int /*<<< orphan*/  data; int /*<<< orphan*/  client; int /*<<< orphan*/  data_len; int /*<<< orphan*/  header_value; int /*<<< orphan*/  header_key; } ;
typedef  TYPE_1__ esp_http_client_event_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ESP_OK ; 
#define  HTTP_EVENT_DISCONNECTED 134 
#define  HTTP_EVENT_ERROR 133 
#define  HTTP_EVENT_HEADER_SENT 132 
#define  HTTP_EVENT_ON_CONNECTED 131 
#define  HTTP_EVENT_ON_DATA 130 
#define  HTTP_EVENT_ON_FINISH 129 
#define  HTTP_EVENT_ON_HEADER 128 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

esp_err_t FUNC4(esp_http_client_event_t *evt)
{
    switch(evt->event_id) {
        case HTTP_EVENT_ERROR:
            FUNC0(TAG, "HTTP_EVENT_ERROR");
            break;
        case HTTP_EVENT_ON_CONNECTED:
            FUNC0(TAG, "HTTP_EVENT_ON_CONNECTED");
            break;
        case HTTP_EVENT_HEADER_SENT:
            FUNC0(TAG, "HTTP_EVENT_HEADER_SENT");
            break;
        case HTTP_EVENT_ON_HEADER:
            FUNC0(TAG, "HTTP_EVENT_ON_HEADER, key=%s, value=%s", evt->header_key, evt->header_value);
            break;
        case HTTP_EVENT_ON_DATA:
            FUNC0(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            if (!FUNC2(evt->client)) {
                // Write out data
                // printf("%.*s", evt->data_len, (char*)evt->data);
            }

            break;
        case HTTP_EVENT_ON_FINISH:
            FUNC0(TAG, "HTTP_EVENT_ON_FINISH");
            break;
        case HTTP_EVENT_DISCONNECTED:
            FUNC1(TAG, "HTTP_EVENT_DISCONNECTED");
            int mbedtls_err = 0;
            esp_err_t err = FUNC3(evt->data, &mbedtls_err, NULL);
            if (err != 0) {
                FUNC1(TAG, "Last esp error code: 0x%x", err);
                FUNC1(TAG, "Last mbedtls failure: 0x%x", mbedtls_err);
            }
            break;
    }
    return ESP_OK;
}