
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int nfds_t ;
typedef int AVIOInterruptCB ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int EINTR ;
 int ETIMEDOUT ;
 int POLLING_TIME ;
 scalar_t__ ff_check_interrupt (int *) ;
 int ff_neterrno () ;
 int poll (struct pollfd*,int ,int) ;

__attribute__((used)) static int ff_poll_interrupt(struct pollfd *p, nfds_t nfds, int timeout,
                             AVIOInterruptCB *cb)
{
    int runs = timeout / POLLING_TIME;
    int ret = 0;

    do {
        if (ff_check_interrupt(cb))
            return AVERROR_EXIT;
        ret = poll(p, nfds, POLLING_TIME);
        if (ret != 0) {
            if (ret < 0)
                ret = ff_neterrno();
            if (ret == AVERROR(EINTR))
                continue;
            break;
        }
    } while (timeout <= 0 || runs-- > 0);

    if (!ret)
        return AVERROR(ETIMEDOUT);
    return ret;
}
