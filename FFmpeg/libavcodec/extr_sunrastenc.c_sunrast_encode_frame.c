
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int * linesize; scalar_t__* data; } ;
struct TYPE_13__ {int size; int flags; int * data; } ;
struct TYPE_12__ {scalar_t__ type; int p; int length; int size; } ;
typedef TYPE_1__ SUNRASTContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_PKT_FLAG_KEY ;
 int AV_WB32 (int *,int ) ;
 scalar_t__ RT_BYTE_ENCODED ;
 int bytestream2_init_writer (int *,int *,int ) ;
 int bytestream2_tell_p (int *) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int ,int ) ;
 int sunrast_image_write_header (TYPE_4__*) ;
 int sunrast_image_write_image (TYPE_4__*,scalar_t__,int const*,int ) ;

__attribute__((used)) static int sunrast_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                                const AVFrame *frame, int *got_packet_ptr)
{
    SUNRASTContext *s = avctx->priv_data;
    int ret;

    if ((ret = ff_alloc_packet2(avctx, avpkt, s->size, 0)) < 0)
        return ret;

    bytestream2_init_writer(&s->p, avpkt->data, avpkt->size);
    sunrast_image_write_header(avctx);
    sunrast_image_write_image(avctx, frame->data[0],
                              (const uint32_t *)frame->data[1],
                              frame->linesize[0]);

    if (s->type == RT_BYTE_ENCODED)
        AV_WB32(&avpkt->data[16], s->length);

    *got_packet_ptr = 1;
    avpkt->flags |= AV_PKT_FLAG_KEY;
    avpkt->size = bytestream2_tell_p(&s->p);
    return 0;
}
