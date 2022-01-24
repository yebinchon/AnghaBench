#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ sds ;
struct TYPE_6__ {scalar_t__ bufpos; scalar_t__ sentlen; size_t reply_bytes; int flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  lastinteraction; int /*<<< orphan*/  reply; scalar_t__ buf; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {scalar_t__ maxmemory; int /*<<< orphan*/  el; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  stat_net_output_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_WRITABLE ; 
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 scalar_t__ NET_MAX_WRITES_PER_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (scalar_t__) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int,scalar_t__,size_t) ; 
 scalar_t__ FUNC10 () ; 

int FUNC11(int fd, client *c, int handler_installed) {
    ssize_t nwritten = 0, totwritten = 0;
    size_t objlen;
    sds o;

    while(FUNC1(c)) {
        if (c->bufpos > 0) {
            nwritten = FUNC9(fd,c->buf+c->sentlen,c->bufpos-c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;

            /* If the buffer was sent, set bufpos to zero to continue with
             * the remainder of the reply. */
            if (c->sentlen == c->bufpos) {
                c->bufpos = 0;
                c->sentlen = 0;
            }
        } else {
            o = FUNC5(FUNC4(c->reply));
            objlen = FUNC6(o);

            if (objlen == 0) {
                FUNC3(c->reply,FUNC4(c->reply));
                continue;
            }

            nwritten = FUNC9(fd, o + c->sentlen, objlen - c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;

            /* If we fully sent the object on head go to the next one */
            if (c->sentlen == objlen) {
                FUNC3(c->reply,FUNC4(c->reply));
                c->sentlen = 0;
                c->reply_bytes -= objlen;
            }
        }
        /* Note that we avoid to send more than NET_MAX_WRITES_PER_EVENT
         * bytes, in a single threaded server it's a good idea to serve
         * other clients as well, even if a very large request comes from
         * super fast link that is always able to accept data (in real world
         * scenario think about 'KEYS *' against the loopback interface).
         *
         * However if we are over the maxmemory limit we ignore that and
         * just deliver as much data as it is possible to deliver. */
        server.stat_net_output_bytes += totwritten;
        if (totwritten > NET_MAX_WRITES_PER_EVENT &&
            (server.maxmemory == 0 ||
             FUNC10() < server.maxmemory)) break;
    }
    if (nwritten == -1) {
        if (errno == EAGAIN) {
            nwritten = 0;
        } else {
            FUNC7(LL_VERBOSE,
                "Error writing to client: %s", FUNC8(errno));
            FUNC2(c);
            return C_ERR;
        }
    }
    if (totwritten > 0) c->lastinteraction = server.unixtime;
    if (!FUNC1(c)) {
        c->sentlen = 0;
        if (handler_installed) FUNC0(server.el,c->fd,AE_WRITABLE);

        /* Close connection after entire reply has been sent. */
        if (c->flags & CLIENT_CLOSE_AFTER_REPLY) {
            FUNC2(c);
            return C_ERR;
        }
    }
    return C_OK;
}