
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pic; int gb; } ;
typedef TYPE_1__ XanContext ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_frame_ref (void*,int ) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int ff_reget_buffer (TYPE_3__*,int ,int ) ;
 int xan_decode_frame_type0 (TYPE_3__*) ;
 int xan_decode_frame_type1 (TYPE_3__*) ;

__attribute__((used)) static int xan_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    XanContext *s = avctx->priv_data;
    int ftype;
    int ret;

    if ((ret = ff_reget_buffer(avctx, s->pic, 0)) < 0)
        return ret;

    bytestream2_init(&s->gb, avpkt->data, avpkt->size);
    ftype = bytestream2_get_le32(&s->gb);
    switch (ftype) {
    case 0:
        ret = xan_decode_frame_type0(avctx);
        break;
    case 1:
        ret = xan_decode_frame_type1(avctx);
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unknown frame type %d\n", ftype);
        return AVERROR_INVALIDDATA;
    }
    if (ret)
        return ret;

    if ((ret = av_frame_ref(data, s->pic)) < 0)
        return ret;

    *got_frame = 1;

    return avpkt->size;
}
