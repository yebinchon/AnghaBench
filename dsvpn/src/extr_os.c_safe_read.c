
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef scalar_t__ ssize_t ;
typedef int nfds_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int POLLIN ;
 scalar_t__ errno ;
 scalar_t__ exit_signal_received ;
 scalar_t__ poll (struct pollfd*,int ,int const) ;
 scalar_t__ read (int const,unsigned char*,size_t) ;

ssize_t safe_read(const int fd, void *const buf_, size_t count, const int timeout)
{
    struct pollfd pfd;
    unsigned char *buf = (unsigned char *) buf_;
    ssize_t readnb = (ssize_t) -1;

    while (readnb != 0 && count > (ssize_t) 0) {
        while ((readnb = read(fd, buf, count)) < (ssize_t) 0) {
            if (errno == EAGAIN) {
                pfd.fd = fd;
                pfd.events = POLLIN;
                if (poll(&pfd, (nfds_t) 1, timeout) <= 0) {
                    return (ssize_t) -1;
                }
            } else if (errno != EINTR || exit_signal_received) {
                return (ssize_t) -1;
            }
        }
        count -= readnb;
        buf += readnb;
    }
    return (ssize_t)(buf - (unsigned char *) buf_);
}
