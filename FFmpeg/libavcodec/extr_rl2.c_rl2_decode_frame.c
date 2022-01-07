
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_1__* priv_data; } ;
struct TYPE_12__ {int * data; int * linesize; } ;
struct TYPE_11__ {int size; int * data; } ;
struct TYPE_10__ {int palette; int video_base; } ;
typedef TYPE_1__ Rl2Context ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVPALETTE_SIZE ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int memcpy (int ,int ,int ) ;
 int rl2_rle_decode (TYPE_1__*,int const*,int,int ,int ,int ) ;

__attribute__((used)) static int rl2_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    int ret, buf_size = avpkt->size;
    Rl2Context *s = avctx->priv_data;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;


    rl2_rle_decode(s, buf, buf_size, frame->data[0], frame->linesize[0],
                   s->video_base);


    memcpy(frame->data[1], s->palette, AVPALETTE_SIZE);

    *got_frame = 1;


    return buf_size;
}
