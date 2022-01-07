
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef scalar_t__ ssize_t ;
typedef int nfds_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int POLLOUT ;
 scalar_t__ errno ;
 scalar_t__ exit_signal_received ;
 scalar_t__ poll (struct pollfd*,int ,int const) ;
 scalar_t__ write (int const,char const*,size_t) ;

ssize_t safe_write(const int fd, const void *const buf_, size_t count, const int timeout)
{
    struct pollfd pfd;
    const char * buf = (const char *) buf_;
    ssize_t written;

    while (count > (size_t) 0) {
        while ((written = write(fd, buf, count)) < (ssize_t) 0) {
            if (errno == EAGAIN) {
                pfd.fd = fd;
                pfd.events = POLLOUT;
                if (poll(&pfd, (nfds_t) 1, timeout) <= 0) {
                    return (ssize_t) -1;
                }
            } else if (errno != EINTR || exit_signal_received) {
                return (ssize_t) -1;
            }
        }
        buf += written;
        count -= written;
    }
    return (ssize_t)(buf - (const char *) buf_);
}
