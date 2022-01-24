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
typedef  TYPE_1__* esp_http_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HTTP_EVENT_DISCONNECTED ; 
 scalar_t__ HTTP_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC3(esp_http_client_handle_t client)
{
    if (client->state >= HTTP_STATE_INIT) {
        FUNC2(client, HTTP_EVENT_DISCONNECTED, FUNC1(client->transport), 0);
        client->state = HTTP_STATE_INIT;
        return FUNC0(client->transport);
    }
    return ESP_OK;
}