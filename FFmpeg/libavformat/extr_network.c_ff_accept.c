
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int member_0; int member_2; int member_1; } ;
struct TYPE_4__ {int interrupt_callback; } ;
typedef TYPE_1__ URLContext ;


 int AV_LOG_DEBUG ;
 int POLLIN ;
 int accept (int,int *,int *) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_neterrno () ;
 int ff_poll_interrupt (struct pollfd*,int,int,int *) ;
 scalar_t__ ff_socket_nonblock (int,int) ;

int ff_accept(int fd, int timeout, URLContext *h)
{
    int ret;
    struct pollfd lp = { fd, POLLIN, 0 };

    ret = ff_poll_interrupt(&lp, 1, timeout, &h->interrupt_callback);
    if (ret < 0)
        return ret;

    ret = accept(fd, ((void*)0), ((void*)0));
    if (ret < 0)
        return ff_neterrno();
    if (ff_socket_nonblock(ret, 1) < 0)
        av_log(h, AV_LOG_DEBUG, "ff_socket_nonblock failed\n");

    return ret;
}
