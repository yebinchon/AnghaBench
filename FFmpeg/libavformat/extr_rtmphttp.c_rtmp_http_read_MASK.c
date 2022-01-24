#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ out_size; scalar_t__ nb_bytes_read; scalar_t__ finishing; int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ RTMP_HTTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVIO_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC5(URLContext *h, uint8_t *buf, int size)
{
    RTMP_HTTPContext *rt = h->priv_data;
    int ret, off = 0;

    /* try to read at least 1 byte of data */
    do {
        ret = FUNC2(rt->stream, buf + off, size);
        if (ret < 0 && ret != AVERROR_EOF)
            return ret;

        if (!ret || ret == AVERROR_EOF) {
            if (rt->finishing) {
                /* Do not send new requests when the client wants to
                 * close the connection. */
                return FUNC0(EAGAIN);
            }

            /* When the client has reached end of file for the last request,
             * we have to send a new request if we have buffered data.
             * Otherwise, we have to send an idle POST. */
            if (rt->out_size > 0) {
                if ((ret = FUNC3(h, "send")) < 0)
                    return ret;
            } else {
                if (rt->nb_bytes_read == 0) {
                    /* Wait 50ms before retrying to read a server reply in
                     * order to reduce the number of idle requests. */
                    FUNC1(50000);
                }

                if ((ret = FUNC4(h, "", 1)) < 0)
                    return ret;

                if ((ret = FUNC3(h, "idle")) < 0)
                    return ret;
            }

            if (h->flags & AVIO_FLAG_NONBLOCK) {
                /* no incoming data to handle in nonblocking mode */
                return FUNC0(EAGAIN);
            }
        } else {
            off  += ret;
            size -= ret;
            rt->nb_bytes_read += ret;
        }
    } while (off <= 0);

    return off;
}