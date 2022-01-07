
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct BitpackedContext {int (* decode ) (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_11__ {struct BitpackedContext* priv_data; } ;
struct TYPE_10__ {int key_frame; int pict_type; } ;
struct TYPE_9__ {int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AV_PICTURE_TYPE_I ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int bitpacked_decode(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt)
{
    struct BitpackedContext *bc = avctx->priv_data;
    int buf_size = avpkt->size;
    AVFrame *frame = data;
    int res;

    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->key_frame = 1;

    res = bc->decode(avctx, frame, avpkt);
    if (res)
        return res;

    *got_frame = 1;
    return buf_size;

}
