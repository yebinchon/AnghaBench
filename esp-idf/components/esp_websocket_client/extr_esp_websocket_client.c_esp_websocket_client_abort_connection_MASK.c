#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_websocket_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait_timeout_ms; int /*<<< orphan*/  state; int /*<<< orphan*/  reconnect_tick_ms; int /*<<< orphan*/  transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WEBSOCKET_EVENT_DISCONNECTED ; 
 int /*<<< orphan*/  WEBSOCKET_RECONNECT_TIMEOUT_MS ; 
 int /*<<< orphan*/  WEBSOCKET_STATE_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC4(esp_websocket_client_handle_t client)
{
    FUNC2(client->transport);
    client->wait_timeout_ms = WEBSOCKET_RECONNECT_TIMEOUT_MS;
    client->reconnect_tick_ms = FUNC1();
    client->state = WEBSOCKET_STATE_WAIT_TIMEOUT;
    FUNC0(TAG, "Reconnect after %d ms", client->wait_timeout_ms);
    FUNC3(client, WEBSOCKET_EVENT_DISCONNECTED, NULL, 0);
    return ESP_OK;
}