#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ http_parser ;
struct TYPE_5__ {int /*<<< orphan*/  current_header_key; } ;
typedef  TYPE_2__ esp_http_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC1(http_parser *parser, const char *at, size_t length)
{
    esp_http_client_t *client = parser->data;
    FUNC0(&client->current_header_key, at, length);

    return 0;
}