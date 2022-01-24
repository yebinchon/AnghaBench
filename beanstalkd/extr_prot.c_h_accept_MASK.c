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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_5__ {int fd; scalar_t__ f; TYPE_1__* x; } ;
struct TYPE_4__ {TYPE_2__ sock; int /*<<< orphan*/ * srv; } ;
typedef  int /*<<< orphan*/  Server ;
typedef  scalar_t__ Handle ;
typedef  TYPE_1__ Conn ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STATE_WANT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (short const) ; 
 int FUNC1 (int const,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  default_tube ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ prothandle ; 
 int FUNC7 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ verbose ; 

void
FUNC10(const int fd, const short which, Server *s)
{
    FUNC0(which);
    struct sockaddr_storage addr;

    socklen_t addrlen = sizeof addr;
    int cfd = FUNC1(fd, (struct sockaddr *)&addr, &addrlen);
    if (cfd == -1) {
        if (errno != EAGAIN && errno != EWOULDBLOCK) FUNC8("accept()");
        FUNC3();
        return;
    }
    if (verbose) {
        FUNC6("accept %d\n", cfd);
    }

    int flags = FUNC4(cfd, F_GETFL, 0);
    if (flags < 0) {
        FUNC8("getting flags");
        FUNC2(cfd);
        if (verbose) {
            FUNC6("close %d\n", cfd);
        }
        FUNC3();
        return;
    }

    int r = FUNC4(cfd, F_SETFL, flags | O_NONBLOCK);
    if (r < 0) {
        FUNC8("setting O_NONBLOCK");
        FUNC2(cfd);
        if (verbose) {
            FUNC6("close %d\n", cfd);
        }
        FUNC3();
        return;
    }

    Conn *c = FUNC5(cfd, STATE_WANT_COMMAND, default_tube, default_tube);
    if (!c) {
        FUNC9("make_conn() failed");
        FUNC2(cfd);
        if (verbose) {
            FUNC6("close %d\n", cfd);
        }
        FUNC3();
        return;
    }
    c->srv = s;
    c->sock.x = c;
    c->sock.f = (Handle)prothandle;
    c->sock.fd = cfd;

    r = FUNC7(&c->sock, 'r');
    if (r == -1) {
        FUNC8("sockwant");
        FUNC2(cfd);
        if (verbose) {
            FUNC6("close %d\n", cfd);
        }
    }
    FUNC3();
}