
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int flags; int interrupt_callback; int rw_timeout; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int fd; int eid; } ;
typedef TYPE_2__ SRTContext ;


 int AVIO_FLAG_NONBLOCK ;
 int libsrt_neterrno (TYPE_1__*) ;
 int libsrt_network_wait_fd_timeout (TYPE_1__*,int ,int ,int ,int ,int *) ;
 int srt_recvmsg (int ,int *,int) ;

__attribute__((used)) static int libsrt_read(URLContext *h, uint8_t *buf, int size)
{
    SRTContext *s = h->priv_data;
    int ret;

    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = libsrt_network_wait_fd_timeout(h, s->eid, s->fd, 0, h->rw_timeout, &h->interrupt_callback);
        if (ret)
            return ret;
    }

    ret = srt_recvmsg(s->fd, buf, size);
    if (ret < 0) {
        ret = libsrt_neterrno(h);
    }

    return ret;
}
