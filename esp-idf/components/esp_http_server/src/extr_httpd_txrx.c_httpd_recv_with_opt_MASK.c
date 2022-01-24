#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_6__ {struct httpd_req_aux* aux; } ;
typedef  TYPE_2__ httpd_req_t ;
struct TYPE_5__ {int pending_len; int (* recv_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  fd; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int HTTPD_SOCK_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 size_t FUNC2 (TYPE_2__*,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

int FUNC4(httpd_req_t *r, char *buf, size_t buf_len, bool halt_after_pending)
{
    FUNC0(TAG, FUNC1("requested length = %d"), buf_len);

    size_t pending_len = 0;
    struct httpd_req_aux *ra = r->aux;

    /* First fetch pending data from local buffer */
    if (ra->sd->pending_len > 0) {
        FUNC0(TAG, FUNC1("pending length = %d"), ra->sd->pending_len);
        pending_len = FUNC2(r, buf, buf_len);
        buf     += pending_len;
        buf_len -= pending_len;

        /* If buffer filled then no need to recv.
         * If asked to halt after receiving pending data then
         * return with received length */
        if (!buf_len || halt_after_pending) {
            return pending_len;
        }
    }

    /* Receive data of remaining length */
    int ret = ra->sd->recv_fn(ra->sd->handle, ra->sd->fd, buf, buf_len, 0);
    if (ret < 0) {
        FUNC0(TAG, FUNC1("error in recv_fn"));
        if ((ret == HTTPD_SOCK_ERR_TIMEOUT) && (pending_len != 0)) {
            /* If recv() timeout occurred, but pending data is
             * present, return length of pending data.
             * This behavior is similar to that of socket recv()
             * function, which, in case has only partially read the
             * requested length, due to timeout, returns with read
             * length, rather than error */
            return pending_len;
        }
        return ret;
    }

    FUNC0(TAG, FUNC1("received length = %d"), ret + pending_len);
    return ret + pending_len;
}