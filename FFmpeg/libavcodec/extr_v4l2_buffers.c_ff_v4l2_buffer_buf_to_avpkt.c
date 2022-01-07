
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* planes; } ;
struct TYPE_16__ {int flags; int bytesused; TYPE_2__ m; int type; } ;
struct TYPE_18__ {TYPE_4__* context; TYPE_3__ buf; } ;
typedef TYPE_5__ V4L2Buffer ;
struct TYPE_20__ {int data; } ;
struct TYPE_19__ {int pts; int dts; int flags; TYPE_9__* buf; int data; int size; } ;
struct TYPE_17__ {int name; } ;
struct TYPE_14__ {int bytesused; } ;
typedef TYPE_6__ AVPacket ;


 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_CORRUPT ;
 int AV_PKT_FLAG_KEY ;
 int V4L2_BUF_FLAG_ERROR ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 int av_log (int ,int ,char*,int ) ;
 int av_packet_unref (TYPE_6__*) ;
 int logger (TYPE_5__*) ;
 int v4l2_buf_to_bufref (TYPE_5__*,int ,TYPE_9__**) ;
 int v4l2_get_pts (TYPE_5__*) ;

int ff_v4l2_buffer_buf_to_avpkt(AVPacket *pkt, V4L2Buffer *avbuf)
{
    int ret;

    av_packet_unref(pkt);
    ret = v4l2_buf_to_bufref(avbuf, 0, &pkt->buf);
    if (ret)
        return ret;

    pkt->size = V4L2_TYPE_IS_MULTIPLANAR(avbuf->buf.type) ? avbuf->buf.m.planes[0].bytesused : avbuf->buf.bytesused;
    pkt->data = pkt->buf->data;

    if (avbuf->buf.flags & V4L2_BUF_FLAG_KEYFRAME)
        pkt->flags |= AV_PKT_FLAG_KEY;

    if (avbuf->buf.flags & V4L2_BUF_FLAG_ERROR) {
        av_log(logger(avbuf), AV_LOG_ERROR, "%s driver encode error\n", avbuf->context->name);
        pkt->flags |= AV_PKT_FLAG_CORRUPT;
    }

    pkt->dts = pkt->pts = v4l2_get_pts(avbuf);

    return 0;
}
