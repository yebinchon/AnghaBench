#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* data; } ;
typedef  TYPE_3__ http_parser ;
typedef  TYPE_4__* esp_http_client_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/ * header_value; int /*<<< orphan*/ * header_key; } ;
struct TYPE_10__ {int /*<<< orphan*/ * current_header_value; int /*<<< orphan*/ * current_header_key; TYPE_2__ event; int /*<<< orphan*/ * auth_header; TYPE_1__* response; int /*<<< orphan*/ * location; } ;
struct TYPE_7__ {int is_chunked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTTP_EVENT_ON_HEADER ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,size_t) ; 
 scalar_t__ FUNC4 (char const*,char*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(http_parser *parser, const char *at, size_t length)
{
    esp_http_client_handle_t client = parser->data;
    if (client->current_header_key == NULL) {
        return 0;
    }
    if (FUNC5(client->current_header_key, "Location") == 0) {
        FUNC3(&client->location, at, length);
    } else if (FUNC5(client->current_header_key, "Transfer-Encoding") == 0
               && FUNC4(at, "chunked", length) == 0) {
        client->response->is_chunked = true;
    } else if (FUNC5(client->current_header_key, "WWW-Authenticate") == 0) {
        FUNC3(&client->auth_header, at, length);
    }
    FUNC3(&client->current_header_value, at, length);

    FUNC0(TAG, "HEADER=%s:%s", client->current_header_key, client->current_header_value);
    client->event.header_key = client->current_header_key;
    client->event.header_value = client->current_header_value;
    FUNC2(client, HTTP_EVENT_ON_HEADER, NULL, 0);
    FUNC1(client->current_header_key);
    FUNC1(client->current_header_value);
    client->current_header_key = NULL;
    client->current_header_value = NULL;
    return 0;
}