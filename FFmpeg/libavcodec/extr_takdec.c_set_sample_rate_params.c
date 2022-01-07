
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sample_rate; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int uval; int subframe_scale; } ;
typedef TYPE_1__ TAKDecContext ;
typedef TYPE_2__ AVCodecContext ;


 int FFALIGN (long long,int) ;

__attribute__((used)) static void set_sample_rate_params(AVCodecContext *avctx)
{
    TAKDecContext *s = avctx->priv_data;
    int shift;

    if (avctx->sample_rate < 11025) {
        shift = 3;
    } else if (avctx->sample_rate < 22050) {
        shift = 2;
    } else if (avctx->sample_rate < 44100) {
        shift = 1;
    } else {
        shift = 0;
    }
    s->uval = FFALIGN(avctx->sample_rate + 511LL >> 9, 4) << shift;
    s->subframe_scale = FFALIGN(avctx->sample_rate + 511LL >> 9, 4) << 1;
}
