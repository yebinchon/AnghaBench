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
typedef  int /*<<< orphan*/  ws_transport_opcodes_t ;
typedef  TYPE_1__* esp_websocket_client_handle_t ;
typedef  int /*<<< orphan*/  TickType_t ;
struct TYPE_4__ {int buffer_size; int /*<<< orphan*/  lock; scalar_t__ tx_buffer; int /*<<< orphan*/ * transport; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,int) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(esp_websocket_client_handle_t client, ws_transport_opcodes_t opcode, const char *data, int len, TickType_t timeout)
{
    int need_write = len;
    int wlen = 0, widx = 0;
    int ret = ESP_FAIL;

    if (client == NULL || data == NULL || len <= 0) {
        FUNC0(TAG, "Invalid arguments");
        return ESP_FAIL;
    }

    if (FUNC5(client->lock, timeout) != pdPASS) {
        FUNC0(TAG, "Could not lock ws-client within %d timeout", timeout);
        return ESP_FAIL;
    }

    if (!FUNC2(client)) {
        FUNC0(TAG, "Websocket client is not connected");
        goto unlock_and_return;
    }

    if (client->transport == NULL) {
        FUNC0(TAG, "Invalid transport");
        goto unlock_and_return;
    }


    while (widx < len) {
        if (need_write > client->buffer_size) {
            need_write = client->buffer_size;
        }
        FUNC3(client->tx_buffer, data + widx, need_write);
        // send with ws specific way and specific opcode
        wlen = FUNC1(client->transport, opcode, (char *)client->tx_buffer, need_write, timeout);
        if (wlen <= 0) {
            ret = wlen;
            FUNC0(TAG, "Network error: esp_transport_write() returned %d, errno=%d", ret, errno);
            goto unlock_and_return;
        }
        widx += wlen;
        need_write = len - widx;
    }
    ret = widx;
unlock_and_return:
    FUNC4(client->lock);
    return ret;
}