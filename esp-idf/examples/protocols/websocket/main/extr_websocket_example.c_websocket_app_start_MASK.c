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
typedef  scalar_t__ esp_websocket_client_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ esp_websocket_client_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WEBSOCKET_ECHO_ENDPOINT ; 
 int /*<<< orphan*/  WEBSOCKET_EVENT_ANY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_RATE_MS ; 
 int FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  websocket_event_handler ; 

__attribute__((used)) static void FUNC10(void)
{
    FUNC0(TAG, "Connectiong to %s...", WEBSOCKET_ECHO_ENDPOINT);

    const esp_websocket_client_config_t websocket_cfg = {
        .uri = WEBSOCKET_ECHO_ENDPOINT, // or wss://echo.websocket.org for websocket secure
    };

    esp_websocket_client_handle_t client = FUNC2(&websocket_cfg);
    FUNC7(client, WEBSOCKET_EVENT_ANY, websocket_event_handler, (void *)client);

    FUNC5(client);
    char data[32];
    int i = 0;
    while (i < 10) {
        if (FUNC3(client)) {
            int len = FUNC8(data, "hello %04d", i++);
            FUNC0(TAG, "Sending %s", data);
            FUNC4(client, data, len, portMAX_DELAY);
        }
        FUNC9(1000 / portTICK_RATE_MS);
    }
    FUNC6(client);
    FUNC0(TAG, "Websocket Stopped");
    FUNC1(client);
}