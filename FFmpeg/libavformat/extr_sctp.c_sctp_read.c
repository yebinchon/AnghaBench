
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sctp_sndrcvinfo {int sinfo_stream; int member_0; } ;
struct TYPE_4__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int fd; scalar_t__ max_streams; } ;
typedef TYPE_2__ SCTPContext ;


 int AVIO_FLAG_NONBLOCK ;
 int AV_WB16 (int *,int ) ;
 int ff_neterrno () ;
 int ff_sctp_recvmsg (int ,int *,int,int *,int ,struct sctp_sndrcvinfo*,int ) ;
 int recv (int ,int *,int,int ) ;
 int sctp_wait_fd (int ,int ) ;

__attribute__((used)) static int sctp_read(URLContext *h, uint8_t *buf, int size)
{
    SCTPContext *s = h->priv_data;
    int ret;

    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = sctp_wait_fd(s->fd, 0);
        if (ret < 0)
            return ret;
    }

    if (s->max_streams) {

        struct sctp_sndrcvinfo info = { 0 };
        ret = ff_sctp_recvmsg(s->fd, buf + 2, size - 2, ((void*)0), 0, &info, 0);
        AV_WB16(buf, info.sinfo_stream);
        ret = ret < 0 ? ret : ret + 2;
    } else
        ret = recv(s->fd, buf, size, 0);

    return ret < 0 ? ff_neterrno() : ret;
}
