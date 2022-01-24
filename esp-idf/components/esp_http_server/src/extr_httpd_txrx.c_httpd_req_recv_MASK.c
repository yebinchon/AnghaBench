#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {int remaining_len; } ;
struct TYPE_5__ {struct httpd_req_aux* aux; } ;
typedef  TYPE_1__ httpd_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HTTPD_SOCK_ERR_INVALID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(httpd_req_t *r, char *buf, size_t buf_len)
{
    if (r == NULL || buf == NULL) {
        return HTTPD_SOCK_ERR_INVALID;
    }

    if (!FUNC4(r)) {
        FUNC1(TAG, FUNC2("invalid request"));
        return HTTPD_SOCK_ERR_INVALID;
    }

    struct httpd_req_aux *ra = r->aux;
    FUNC0(TAG, FUNC2("remaining length = %d"), ra->remaining_len);

    if (buf_len > ra->remaining_len) {
        buf_len = ra->remaining_len;
    }
    if (buf_len == 0) {
        return buf_len;
    }

    int ret = FUNC3(r, buf, buf_len);
    if (ret < 0) {
        FUNC0(TAG, FUNC2("error in httpd_recv"));
        return ret;
    }
    ra->remaining_len -= ret;
    FUNC0(TAG, FUNC2("received length = %d"), ret);
    return ret;
}