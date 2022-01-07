
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;
typedef int SRTSOCKET ;


 int AVERROR (int ) ;
 int EAGAIN ;
 int POLLING_TIME ;
 int SRT_EPOLL_IN ;
 int SRT_EPOLL_OUT ;
 scalar_t__ SRT_ETIMEOUT ;
 int libsrt_neterrno (int *) ;
 scalar_t__ srt_epoll_add_usock (int,int,int*) ;
 scalar_t__ srt_epoll_remove_usock (int,int) ;
 int srt_epoll_wait (int,int *,int*,int *,int*,int ,int ,int ,int ,int ) ;
 scalar_t__ srt_getlasterror (int *) ;

__attribute__((used)) static int libsrt_network_wait_fd(URLContext *h, int eid, int fd, int write)
{
    int ret, len = 1;
    int modes = write ? SRT_EPOLL_OUT : SRT_EPOLL_IN;
    SRTSOCKET ready[1];

    if (srt_epoll_add_usock(eid, fd, &modes) < 0)
        return libsrt_neterrno(h);
    if (write) {
        ret = srt_epoll_wait(eid, 0, 0, ready, &len, POLLING_TIME, 0, 0, 0, 0);
    } else {
        ret = srt_epoll_wait(eid, ready, &len, 0, 0, POLLING_TIME, 0, 0, 0, 0);
    }
    if (ret < 0) {
        if (srt_getlasterror(((void*)0)) == SRT_ETIMEOUT)
            ret = AVERROR(EAGAIN);
        else
            ret = libsrt_neterrno(h);
    } else {
        ret = 0;
    }
    if (srt_epoll_remove_usock(eid, fd) < 0)
        return libsrt_neterrno(h);
    return ret;
}
