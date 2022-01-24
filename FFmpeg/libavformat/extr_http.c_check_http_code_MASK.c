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
struct TYPE_9__ {TYPE_4__* priv_data; } ;
typedef  TYPE_3__ URLContext ;
struct TYPE_8__ {scalar_t__ auth_type; } ;
struct TYPE_7__ {scalar_t__ auth_type; } ;
struct TYPE_10__ {TYPE_2__ proxy_auth_state; TYPE_1__ auth_state; } ;
typedef  TYPE_4__ HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ HTTP_AUTH_NONE ; 
 int /*<<< orphan*/  SPACE_CHARS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,char const*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(URLContext *h, int http_code, const char *end)
{
    HTTPContext *s = h->priv_data;
    /* error codes are 4xx and 5xx, but regard 401 as a success, so we
     * don't abort until all headers have been parsed. */
    if (http_code >= 400 && http_code < 600 &&
        (http_code != 401 || s->auth_state.auth_type != HTTP_AUTH_NONE) &&
        (http_code != 407 || s->proxy_auth_state.auth_type != HTTP_AUTH_NONE)) {
        end += FUNC3(end, SPACE_CHARS);
        FUNC1(h, AV_LOG_WARNING, "HTTP error %d %s\n", http_code, end);
        return FUNC2(http_code, FUNC0(EIO));
    }
    return 0;
}