
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pb; TYPE_3__* avctx; int strict_compliance; } ;
typedef TYPE_2__ VC2EncContext ;
struct TYPE_5__ {int den; int num; } ;
struct TYPE_7__ {TYPE_1__ sample_aspect_ratio; } ;
typedef TYPE_3__ AVCodecContext ;


 int put_bits (int *,int,int) ;
 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_aspect_ratio(VC2EncContext *s)
{
    put_bits(&s->pb, 1, !s->strict_compliance);
    if (!s->strict_compliance) {
        AVCodecContext *avctx = s->avctx;
        put_vc2_ue_uint(&s->pb, 0);
        put_vc2_ue_uint(&s->pb, avctx->sample_aspect_ratio.num);
        put_vc2_ue_uint(&s->pb, avctx->sample_aspect_ratio.den);
    }
}
