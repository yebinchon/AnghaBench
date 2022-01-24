#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_http_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {struct TYPE_7__* auth_header; struct TYPE_7__* location; struct TYPE_7__* current_header_key; struct TYPE_7__* auth_data; struct TYPE_7__* parser_settings; struct TYPE_7__* parser; struct TYPE_7__* response; struct TYPE_7__* buffer; struct TYPE_7__* data; int /*<<< orphan*/  headers; struct TYPE_7__* request; int /*<<< orphan*/  transport_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(esp_http_client_handle_t client)
{
    if (client == NULL) {
        return ESP_FAIL;
    }
    FUNC2(client);
    FUNC3(client->transport_list);
    FUNC5(client->request->headers);
    FUNC4(client->request->buffer->data);
    FUNC4(client->request->buffer);
    FUNC4(client->request);
    FUNC5(client->response->headers);
    FUNC4(client->response->buffer->data);
    FUNC4(client->response->buffer);
    FUNC4(client->response);

    FUNC4(client->parser);
    FUNC4(client->parser_settings);
    FUNC1(client);
    FUNC0(client);
    FUNC4(client->auth_data);
    FUNC4(client->current_header_key);
    FUNC4(client->location);
    FUNC4(client->auth_header);
    FUNC4(client);
    return ESP_OK;
}