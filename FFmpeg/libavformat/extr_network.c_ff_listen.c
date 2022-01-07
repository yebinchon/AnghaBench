
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int reuse ;


 int AV_LOG_WARNING ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int av_log (int *,int ,char*) ;
 int bind (int,struct sockaddr const*,int ) ;
 int ff_neterrno () ;
 int listen (int,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

int ff_listen(int fd, const struct sockaddr *addr,
              socklen_t addrlen)
{
    int ret;
    int reuse = 1;
    if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse))) {
        av_log(((void*)0), AV_LOG_WARNING, "setsockopt(SO_REUSEADDR) failed\n");
    }
    ret = bind(fd, addr, addrlen);
    if (ret)
        return ff_neterrno();

    ret = listen(fd, 1);
    if (ret)
        return ff_neterrno();
    return ret;
}
