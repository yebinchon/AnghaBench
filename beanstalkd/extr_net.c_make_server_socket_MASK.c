#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int errno ; 
 int FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(char *host, char *port)
{
    int fd = -1, r;

    /* See if we got a listen fd from systemd. If so, all socket options etc
     * are already set, so we check that the fd is a TCP or UNIX listen socket
     * and return. */
    r = FUNC4(1);
    if (r < 0) {
        FUNC6("sd_listen_fds");
        return -1;
    }
    if (r > 0) {
        if (r > 1) {
            FUNC7("inherited more than one listen socket;"
                   " ignoring all but the first");
        }
        fd = SD_LISTEN_FDS_START;
        r = FUNC2(fd, 0, SOCK_STREAM, 1, 0);
        if (r < 0) {
            FUNC6("sd_is_socket_inet");
            errno = -r;
            return -1;
        }
        if (r == 0) {
            r = FUNC3(fd, SOCK_STREAM, 1, NULL, 0);
            if (r < 0) {
                FUNC6("sd_is_socket_unix");
                errno = -r;
                return -1;
            }
            if (r == 0) {
                FUNC7("inherited fd is not a TCP or UNIX listening socket");
                return -1;
            }
        }
        return fd;
    }

    if (host && !FUNC5(host, "unix:", 5)) {
        return FUNC1(&host[5]);
    } else {
        return FUNC0(host, port);
    }
}