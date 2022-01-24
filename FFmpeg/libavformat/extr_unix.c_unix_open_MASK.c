#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct TYPE_8__ {int timeout; int fd; TYPE_1__ addr; scalar_t__ listen; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ UnixContext ;
struct TYPE_9__ {int rw_timeout; TYPE_2__* priv_data; } ;
typedef  TYPE_3__ URLContext ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int,int,TYPE_3__*) ; 
 int FUNC5 (int,struct sockaddr*,int,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(URLContext *h, const char *filename, int flags)
{
    UnixContext *s = h->priv_data;
    int fd, ret;

    FUNC2(filename, "unix:", &filename);
    s->addr.sun_family = AF_UNIX;
    FUNC1(s->addr.sun_path, filename, sizeof(s->addr.sun_path));

    if ((fd = FUNC7(AF_UNIX, s->type, 0)) < 0)
        return FUNC6();

    if (s->timeout < 0 && h->rw_timeout)
        s->timeout = h->rw_timeout / 1000;

    if (s->listen) {
        ret = FUNC4(fd, (struct sockaddr *)&s->addr,
                             sizeof(s->addr), s->timeout, h);
        if (ret < 0)
            goto fail;
        fd = ret;
    } else {
        ret = FUNC5(fd, (struct sockaddr *)&s->addr,
                                sizeof(s->addr), s->timeout, h, 0);
        if (ret < 0)
            goto fail;
    }

    s->fd = fd;

    return 0;

fail:
    if (s->listen && FUNC0(ret) != EADDRINUSE)
        FUNC8(s->addr.sun_path);
    if (fd >= 0)
        FUNC3(fd);
    return ret;
}