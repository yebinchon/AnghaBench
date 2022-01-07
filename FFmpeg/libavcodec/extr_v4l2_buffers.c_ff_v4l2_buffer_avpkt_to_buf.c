
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ V4L2Buffer ;
struct TYPE_8__ {int flags; int pts; int buf; int size; int data; } ;
typedef TYPE_2__ AVPacket ;


 int AV_PKT_FLAG_KEY ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int v4l2_bufref_to_buf (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int v4l2_set_pts (TYPE_1__*,int ) ;

int ff_v4l2_buffer_avpkt_to_buf(const AVPacket *pkt, V4L2Buffer *out)
{
    int ret;

    ret = v4l2_bufref_to_buf(out, 0, pkt->data, pkt->size, 0, pkt->buf);
    if (ret)
        return ret;

    v4l2_set_pts(out, pkt->pts);

    if (pkt->flags & AV_PKT_FLAG_KEY)
        out->flags = V4L2_BUF_FLAG_KEYFRAME;

    return 0;
}
