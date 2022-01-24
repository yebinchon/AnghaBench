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
struct TYPE_3__ {char* url; int /*<<< orphan*/  event_handler; } ;
typedef  TYPE_1__ esp_http_client_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int MAX_HTTP_RECV_BUFFER ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _http_event_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(void)
{
    char *buffer = FUNC13(MAX_HTTP_RECV_BUFFER + 1);
    if (buffer == NULL) {
        FUNC1(TAG, "Cannot malloc http receive buffer");
        return;
    }
    esp_http_client_config_t config = {
        .url = "http://httpbin.org/get",
        .event_handler = _http_event_handler,
    };
    esp_http_client_handle_t client = FUNC9(&config);
    esp_err_t err;
    if ((err = FUNC10(client, 0)) != ESP_OK) {
        FUNC1(TAG, "Failed to open HTTP connection: %s", FUNC3(err));
        FUNC12(buffer);
        return;
    }
    int content_length =  FUNC6(client);
    int total_read_len = 0, read_len;
    if (total_read_len < content_length && content_length <= MAX_HTTP_RECV_BUFFER) {
        read_len = FUNC11(client, buffer, content_length);
        if (read_len <= 0) {
            FUNC1(TAG, "Error read data");
        }
        buffer[read_len] = 0;
        FUNC0(TAG, "read_len = %d", read_len);
    }
    FUNC2(TAG, "HTTP Stream reader Status = %d, content_length = %d",
                    FUNC8(client),
                    FUNC7(client));
    FUNC5(client);
    FUNC4(client);
    FUNC12(buffer);
}