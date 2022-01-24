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
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int revents; scalar_t__ fd; int events; } ;
struct _reent {int dummy; } ;
typedef  int nfds_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  __errno_r ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,scalar_t__) ; 
 scalar_t__ MAX_FDS ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLNVAL ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int POLLRDBAND ; 
 int POLLRDNORM ; 
 int POLLWRBAND ; 
 int POLLWRNORM ; 
 struct _reent* FUNC4 () ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int FUNC6(struct pollfd *fds, nfds_t nfds, int timeout)
{
    struct timeval tv = {
        // timeout is in milliseconds
        .tv_sec = timeout / 1000,
        .tv_usec = (timeout % 1000) * 1000,
    };
    int max_fd = -1;
    fd_set readfds;
    fd_set writefds;
    fd_set errorfds;
    struct _reent* r = FUNC4();
    int ret = 0;

    if (fds == NULL) {
        __errno_r(r) = ENOENT;
        return -1;
    }

    FUNC2(&readfds);
    FUNC2(&writefds);
    FUNC2(&errorfds);

    for (int i = 0; i < nfds; ++i) {
        fds[i].revents = 0;

        if (fds[i].fd < 0) {
            // revents should remain 0 and events ignored (according to the documentation of poll()).
            continue;
        }

        if (fds[i].fd >= MAX_FDS) {
            fds[i].revents |= POLLNVAL;
            ++ret;
            continue;
        }

        if (fds[i].events & (POLLIN | POLLRDNORM | POLLRDBAND | POLLPRI)) {
            FUNC1(fds[i].fd, &readfds);
            FUNC1(fds[i].fd, &errorfds);
            max_fd = FUNC3(max_fd, fds[i].fd);
        }

        if (fds[i].events & (POLLOUT | POLLWRNORM | POLLWRBAND)) {
            FUNC1(fds[i].fd, &writefds);
            FUNC1(fds[i].fd, &errorfds);
            max_fd = FUNC3(max_fd, fds[i].fd);
        }
    }

    const int select_ret = FUNC5(max_fd + 1, &readfds, &writefds, &errorfds, timeout < 0 ? NULL: &tv);

    if (select_ret > 0) {
        ret += select_ret;

        for (int i = 0; i < nfds; ++i) {
            if (FUNC0(fds[i].fd, &readfds)) {
                fds[i].revents |= POLLIN;
            }

            if (FUNC0(fds[i].fd, &writefds)) {
                fds[i].revents |= POLLOUT;
            }

            if (FUNC0(fds[i].fd, &errorfds)) {
                fds[i].revents |= POLLERR;
            }
        }
    } else {
        ret = select_ret;
        // keeping the errno from select()
    }

    return ret;
}