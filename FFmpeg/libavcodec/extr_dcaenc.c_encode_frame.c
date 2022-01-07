
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_28__ {TYPE_2__* priv_data; } ;
struct TYPE_27__ {int nb_samples; int pts; scalar_t__* data; } ;
struct TYPE_26__ {int size; int duration; int pts; int data; } ;
struct TYPE_24__ {scalar_t__ adpcm_mode; } ;
struct TYPE_25__ {int frame_size; int pb; TYPE_1__ options; scalar_t__ lfe_channel; } ;
typedef TYPE_2__ DCAEncContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int SUBFRAMES ;
 int adpcm_analysis (TYPE_2__*) ;
 int assign_bits (TYPE_2__*) ;
 int calc_lfe_scales (TYPE_2__*) ;
 int calc_masking (TYPE_2__*,int const*) ;
 int ff_alloc_packet2 (TYPE_5__*,TYPE_3__*,int,int ) ;
 int ff_samples_to_time_base (TYPE_5__*,int ) ;
 int fill_in_adpcm_bufer (TYPE_2__*) ;
 int find_peaks (TYPE_2__*) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int ,int) ;
 int lfe_downsample (TYPE_2__*,int const*) ;
 int put_bits (int *,int,int ) ;
 int put_bits_count (int *) ;
 int put_frame_header (TYPE_2__*) ;
 int put_primary_audio_header (TYPE_2__*) ;
 int put_subframe (TYPE_2__*,int) ;
 int shift_history (TYPE_2__*,int const*) ;
 int subband_transform (TYPE_2__*,int const*) ;

__attribute__((used)) static int encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                        const AVFrame *frame, int *got_packet_ptr)
{
    DCAEncContext *c = avctx->priv_data;
    const int32_t *samples;
    int ret, i;

    if ((ret = ff_alloc_packet2(avctx, avpkt, c->frame_size, 0)) < 0)
        return ret;

    samples = (const int32_t *)frame->data[0];

    subband_transform(c, samples);
    if (c->lfe_channel)
        lfe_downsample(c, samples);

    calc_masking(c, samples);
    if (c->options.adpcm_mode)
        adpcm_analysis(c);
    find_peaks(c);
    assign_bits(c);
    calc_lfe_scales(c);
    shift_history(c, samples);

    init_put_bits(&c->pb, avpkt->data, avpkt->size);
    fill_in_adpcm_bufer(c);
    put_frame_header(c);
    put_primary_audio_header(c);
    for (i = 0; i < SUBFRAMES; i++)
        put_subframe(c, i);


    for (i = put_bits_count(&c->pb); i < 8*c->frame_size; i++)
        put_bits(&c->pb, 1, 0);

    flush_put_bits(&c->pb);

    avpkt->pts = frame->pts;
    avpkt->duration = ff_samples_to_time_base(avctx, frame->nb_samples);
    avpkt->size = put_bits_count(&c->pb) >> 3;
    *got_packet_ptr = 1;
    return 0;
}
