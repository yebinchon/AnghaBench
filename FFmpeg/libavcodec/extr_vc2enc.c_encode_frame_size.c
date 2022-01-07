
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pb; TYPE_2__* avctx; int strict_compliance; } ;
typedef TYPE_1__ VC2EncContext ;
struct TYPE_5__ {int height; int width; } ;
typedef TYPE_2__ AVCodecContext ;


 int put_bits (int *,int,int) ;
 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_frame_size(VC2EncContext *s)
{
    put_bits(&s->pb, 1, !s->strict_compliance);
    if (!s->strict_compliance) {
        AVCodecContext *avctx = s->avctx;
        put_vc2_ue_uint(&s->pb, avctx->width);
        put_vc2_ue_uint(&s->pb, avctx->height);
    }
}
