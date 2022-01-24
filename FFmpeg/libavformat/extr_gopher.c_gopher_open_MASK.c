#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  auth ;
struct TYPE_7__ {int is_streamed; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int /*<<< orphan*/ * hd; } ;
typedef  TYPE_2__ GopherContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int,int*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5(URLContext *h, const char *uri, int flags)
{
    GopherContext *s = h->priv_data;
    char hostname[1024], auth[1024], path[1024], buf[1024];
    int port, err;

    h->is_streamed = 1;

    /* needed in any case to build the host string */
    FUNC0(NULL, 0, auth, sizeof(auth), hostname, sizeof(hostname), &port,
                 path, sizeof(path), uri);

    if (port < 0)
        port = 70;

    FUNC1(buf, sizeof(buf), "tcp", NULL, hostname, port, NULL);

    s->hd = NULL;
    err = FUNC2(&s->hd, buf, AVIO_FLAG_READ_WRITE,
                               &h->interrupt_callback, NULL, h->protocol_whitelist, h->protocol_blacklist, h);
    if (err < 0)
        goto fail;

    if ((err = FUNC4(h, path)) < 0)
        goto fail;
    return 0;
 fail:
    FUNC3(h);
    return err;
}