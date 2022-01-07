
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int revents; scalar_t__ fd; int events; } ;
struct _reent {int dummy; } ;
typedef int nfds_t ;
typedef int fd_set ;
typedef int __errno_r ;


 int ENOENT ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int MAX (int,scalar_t__) ;
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
 struct _reent* __getreent () ;
 int esp_vfs_select (int,int *,int *,int *,struct timeval*) ;

int esp_vfs_poll(struct pollfd *fds, nfds_t nfds, int timeout)
{
    struct timeval tv = {

        .tv_sec = timeout / 1000,
        .tv_usec = (timeout % 1000) * 1000,
    };
    int max_fd = -1;
    fd_set readfds;
    fd_set writefds;
    fd_set errorfds;
    struct _reent* r = __getreent();
    int ret = 0;

    if (fds == ((void*)0)) {
        __errno_r(r) = ENOENT;
        return -1;
    }

    FD_ZERO(&readfds);
    FD_ZERO(&writefds);
    FD_ZERO(&errorfds);

    for (int i = 0; i < nfds; ++i) {
        fds[i].revents = 0;

        if (fds[i].fd < 0) {

            continue;
        }

        if (fds[i].fd >= MAX_FDS) {
            fds[i].revents |= POLLNVAL;
            ++ret;
            continue;
        }

        if (fds[i].events & (POLLIN | POLLRDNORM | POLLRDBAND | POLLPRI)) {
            FD_SET(fds[i].fd, &readfds);
            FD_SET(fds[i].fd, &errorfds);
            max_fd = MAX(max_fd, fds[i].fd);
        }

        if (fds[i].events & (POLLOUT | POLLWRNORM | POLLWRBAND)) {
            FD_SET(fds[i].fd, &writefds);
            FD_SET(fds[i].fd, &errorfds);
            max_fd = MAX(max_fd, fds[i].fd);
        }
    }

    const int select_ret = esp_vfs_select(max_fd + 1, &readfds, &writefds, &errorfds, timeout < 0 ? ((void*)0): &tv);

    if (select_ret > 0) {
        ret += select_ret;

        for (int i = 0; i < nfds; ++i) {
            if (FD_ISSET(fds[i].fd, &readfds)) {
                fds[i].revents |= POLLIN;
            }

            if (FD_ISSET(fds[i].fd, &writefds)) {
                fds[i].revents |= POLLOUT;
            }

            if (FD_ISSET(fds[i].fd, &errorfds)) {
                fds[i].revents |= POLLERR;
            }
        }
    } else {
        ret = select_ret;

    }

    return ret;
}
