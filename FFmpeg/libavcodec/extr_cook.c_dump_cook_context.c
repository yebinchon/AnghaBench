
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int channels; int sample_rate; scalar_t__ bit_rate; } ;
struct TYPE_6__ {TYPE_1__* subpacket; TYPE_3__* avctx; } ;
struct TYPE_5__ {scalar_t__ cookversion; int js_subband_start; int js_vlc_bits; int samples_per_channel; int subbands; int log2_numvector_size; int numvector_size; int total_subbands; } ;
typedef TYPE_2__ COOKContext ;


 int PRINT (char*,int) ;
 scalar_t__ STEREO ;
 int ff_dlog (TYPE_3__*,char*,...) ;

__attribute__((used)) static void dump_cook_context(COOKContext *q)
{


    ff_dlog(q->avctx, "COOKextradata\n");
    ff_dlog(q->avctx, "cookversion=%x\n", q->subpacket[0].cookversion);
    if (q->subpacket[0].cookversion > STEREO) {
        ff_dlog(q->avctx, " %s = %d\n", "js_subband_start", q->subpacket[0].js_subband_start);;
        ff_dlog(q->avctx, " %s = %d\n", "js_vlc_bits", q->subpacket[0].js_vlc_bits);;
    }
    ff_dlog(q->avctx, "COOKContext\n");
    ff_dlog(q->avctx, " %s = %d\n", "nb_channels", q->avctx->channels);;
    ff_dlog(q->avctx, " %s = %d\n", "bit_rate", (int)q->avctx->bit_rate);;
    ff_dlog(q->avctx, " %s = %d\n", "sample_rate", q->avctx->sample_rate);;
    ff_dlog(q->avctx, " %s = %d\n", "samples_per_channel", q->subpacket[0].samples_per_channel);;
    ff_dlog(q->avctx, " %s = %d\n", "subbands", q->subpacket[0].subbands);;
    ff_dlog(q->avctx, " %s = %d\n", "js_subband_start", q->subpacket[0].js_subband_start);;
    ff_dlog(q->avctx, " %s = %d\n", "log2_numvector_size", q->subpacket[0].log2_numvector_size);;
    ff_dlog(q->avctx, " %s = %d\n", "numvector_size", q->subpacket[0].numvector_size);;
    ff_dlog(q->avctx, " %s = %d\n", "total_subbands", q->subpacket[0].total_subbands);;
}
