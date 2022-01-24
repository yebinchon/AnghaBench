#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_websocket_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {scalar_t__ status_bits; struct TYPE_6__* rx_buffer; struct TYPE_6__* tx_buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  transport_list; scalar_t__ event_handle; scalar_t__ run; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC7(esp_websocket_client_handle_t client)
{
    if (client == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    if (client->run) {
        FUNC3(client);
    }
    if (client->event_handle) {
        FUNC0(client->event_handle);
    }
    FUNC2(client);
    FUNC1(client->transport_list);
    FUNC6(client->lock);
    FUNC4(client->tx_buffer);
    FUNC4(client->rx_buffer);
    if (client->status_bits) {
        FUNC5(client->status_bits);
    }
    FUNC4(client);
    client = NULL;
    return ESP_OK;
}