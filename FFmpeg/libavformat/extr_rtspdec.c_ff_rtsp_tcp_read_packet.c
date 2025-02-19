
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ transport; int nb_rtsp_streams; TYPE_1__** rtsp_streams; int rtsp_hd; } ;
struct TYPE_8__ {int interleaved_min; int interleaved_max; } ;
typedef TYPE_1__ RTSPStream ;
typedef TYPE_2__ RTSPState ;
typedef int RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_TRACE ;
 int AV_RB16 (int*) ;
 scalar_t__ RTSP_STATE_STREAMING ;
 scalar_t__ RTSP_TRANSPORT_RDT ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 scalar_t__ ff_rdt_parse_header (int*,int,int*,int *,int *,int *,int *) ;
 int ff_rtsp_read_reply (TYPE_3__*,int *,int *,int,int *) ;
 int ffurl_read_complete (int ,int*,int) ;

int ff_rtsp_tcp_read_packet(AVFormatContext *s, RTSPStream **prtsp_st,
                            uint8_t *buf, int buf_size)
{
    RTSPState *rt = s->priv_data;
    int id, len, i, ret;
    RTSPStream *rtsp_st;

    av_log(s, AV_LOG_TRACE, "tcp_read_packet:\n");
redo:
    for (;;) {
        RTSPMessageHeader reply;

        ret = ff_rtsp_read_reply(s, &reply, ((void*)0), 1, ((void*)0));
        if (ret < 0)
            return ret;
        if (ret == 1)
            break;

        if (rt->state != RTSP_STATE_STREAMING)
            return 0;
    }
    ret = ffurl_read_complete(rt->rtsp_hd, buf, 3);
    if (ret != 3)
        return -1;
    id = buf[0];
    len = AV_RB16(buf + 1);
    av_log(s, AV_LOG_TRACE, "id=%d len=%d\n", id, len);
    if (len > buf_size || len < 8)
        goto redo;

    ret = ffurl_read_complete(rt->rtsp_hd, buf, len);
    if (ret != len)
        return -1;
    if (rt->transport == RTSP_TRANSPORT_RDT &&
        ff_rdt_parse_header(buf, len, &id, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) < 0)
        return -1;


    for (i = 0; i < rt->nb_rtsp_streams; i++) {
        rtsp_st = rt->rtsp_streams[i];
        if (id >= rtsp_st->interleaved_min &&
            id <= rtsp_st->interleaved_max)
            goto found;
    }
    goto redo;
found:
    *prtsp_st = rtsp_st;
    return len;
}
