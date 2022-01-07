
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct sctp_sndrcvinfo {scalar_t__ sinfo_stream; int member_0; } ;
struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ max_streams; int fd; } ;
typedef TYPE_2__ SCTPContext ;


 int AVERROR_BUG ;
 int AVIO_FLAG_NONBLOCK ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_RB16 (int const*) ;
 int MSG_EOR ;
 int MSG_NOSIGNAL ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_neterrno () ;
 int ff_sctp_send (int ,int const*,int,struct sctp_sndrcvinfo*,int ) ;
 int sctp_wait_fd (int ,int) ;
 int send (int ,int const*,int,int ) ;

__attribute__((used)) static int sctp_write(URLContext *h, const uint8_t *buf, int size)
{
    SCTPContext *s = h->priv_data;
    int ret;

    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = sctp_wait_fd(s->fd, 1);
        if (ret < 0)
            return ret;
    }

    if (s->max_streams) {

        struct sctp_sndrcvinfo info = { 0 };
        info.sinfo_stream = AV_RB16(buf);
        if (info.sinfo_stream > s->max_streams) {
            av_log(h, AV_LOG_ERROR, "bad input data\n");
            return AVERROR_BUG;
        }
        ret = ff_sctp_send(s->fd, buf + 2, size - 2, &info, MSG_EOR);
    } else
        ret = send(s->fd, buf, size, MSG_NOSIGNAL);

    return ret < 0 ? ff_neterrno() : ret;
}
