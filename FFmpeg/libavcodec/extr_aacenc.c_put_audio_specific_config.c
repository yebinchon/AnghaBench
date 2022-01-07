
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int channels; int profile; int samplerate_index; scalar_t__ needs_pce; } ;
struct TYPE_5__ {int extradata_size; int extradata; TYPE_2__* priv_data; } ;
typedef int PutBitContext ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ AACEncContext ;


 int AOT_SBR ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int av_mallocz (int const) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int ,int const) ;
 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;
 int put_pce (int *,TYPE_1__*) ;

__attribute__((used)) static int put_audio_specific_config(AVCodecContext *avctx)
{
    PutBitContext pb;
    AACEncContext *s = avctx->priv_data;
    int channels = (!s->needs_pce)*(s->channels - (s->channels == 8 ? 1 : 0));
    const int max_size = 32;

    avctx->extradata = av_mallocz(max_size);
    if (!avctx->extradata)
        return AVERROR(ENOMEM);

    init_put_bits(&pb, avctx->extradata, max_size);
    put_bits(&pb, 5, s->profile+1);
    put_bits(&pb, 4, s->samplerate_index);
    put_bits(&pb, 4, channels);

    put_bits(&pb, 1, 0);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 1, 0);
    if (s->needs_pce)
        put_pce(&pb, avctx);


    put_bits(&pb, 11, 0x2b7);
    put_bits(&pb, 5, AOT_SBR);
    put_bits(&pb, 1, 0);
    flush_put_bits(&pb);
    avctx->extradata_size = put_bits_count(&pb) >> 3;

    return 0;
}
