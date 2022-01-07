
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; int data; } ;
struct TYPE_7__ {int frame; int gb; } ;
typedef TYPE_1__ RpzaContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int av_frame_ref (void*,int ) ;
 int bytestream2_init (int *,int ,int) ;
 int rpza_decode_stream (TYPE_1__*) ;

__attribute__((used)) static int rpza_decode_frame(AVCodecContext *avctx,
                             void *data, int *got_frame,
                             AVPacket *avpkt)
{
    RpzaContext *s = avctx->priv_data;
    int ret;

    bytestream2_init(&s->gb, avpkt->data, avpkt->size);

    ret = rpza_decode_stream(s);
    if (ret < 0)
        return ret;

    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;


    return avpkt->size;
}
