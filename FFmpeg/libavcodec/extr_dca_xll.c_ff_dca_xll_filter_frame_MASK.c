#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  enum AVMatrixEncoding { ____Placeholder_AVMatrixEncoding } AVMatrixEncoding ;
struct TYPE_37__ {int sample_rate; int bits_per_raw_sample; int channels; scalar_t__ bit_rate; int /*<<< orphan*/  profile; scalar_t__ sample_fmt; TYPE_6__* priv_data; } ;
struct TYPE_36__ {int nb_samples; scalar_t__ format; scalar_t__* extended_data; } ;
struct TYPE_30__ {TYPE_5__* assets; } ;
struct TYPE_35__ {int packet; int request_channel_layout; TYPE_1__ exss; } ;
struct TYPE_34__ {scalar_t__ representation_type; int /*<<< orphan*/  one_to_one_map_ch_to_spkr; } ;
struct TYPE_33__ {int residual_encode; int nchannels; int nfreqbands; int ch_mask; scalar_t__ dmix_type; int freq; int storage_bit_res; int /*<<< orphan*/  dmix_coeff; int /*<<< orphan*/  pcm_bit_res; scalar_t__ dmix_embedded; TYPE_2__* bands; int /*<<< orphan*/  primary_chset; } ;
struct TYPE_32__ {int nchsets; int nactivechsets; int output_mask; int nfreqbands; int** output_samples; int nframesamples; int /*<<< orphan*/  dcadsp; TYPE_4__* chset; scalar_t__ scalable_lsbs; scalar_t__ fixed_lsb_width; TYPE_8__* avctx; } ;
struct TYPE_31__ {scalar_t__ dmix_embedded; } ;
typedef  int SUINT ;
typedef  TYPE_3__ DCAXllDecoder ;
typedef  TYPE_4__ DCAXllChSet ;
typedef  TYPE_5__ DCAExssAsset ;
typedef  TYPE_6__ DCAContext ;
typedef  TYPE_7__ AVFrame ;
typedef  TYPE_8__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_MATRIX_ENCODING_DOLBY ; 
 int AV_MATRIX_ENCODING_DOLBYHEADPHONE ; 
 int AV_MATRIX_ENCODING_NONE ; 
 scalar_t__ AV_SAMPLE_FMT_S16P ; 
 scalar_t__ AV_SAMPLE_FMT_S32P ; 
 scalar_t__ DCA_DMIX_TYPE_LoRo ; 
 scalar_t__ DCA_DMIX_TYPE_LtRt ; 
 scalar_t__ FUNC1 (int) ; 
 int DCA_PACKET_RECOVERY ; 
 scalar_t__ DCA_REPR_TYPE_LhRh ; 
 scalar_t__ DCA_REPR_TYPE_LtRt ; 
 int DCA_SPEAKER_COUNT ; 
 int DCA_SPEAKER_LAYOUT_STEREO ; 
 size_t DCA_SPEAKER_Ls ; 
 size_t DCA_SPEAKER_Lss ; 
 int DCA_SPEAKER_MASK_Ls ; 
 int DCA_SPEAKER_MASK_Lss ; 
 int DCA_SPEAKER_MASK_Rs ; 
 int DCA_SPEAKER_MASK_Rss ; 
 size_t DCA_SPEAKER_Rs ; 
 size_t DCA_SPEAKER_Rss ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FF_PROFILE_DTS_HD_MA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int*,int) ; 
 int FUNC10 (TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_4__*,int) ; 

int FUNC16(DCAXllDecoder *s, AVFrame *frame)
{
    AVCodecContext *avctx = s->avctx;
    DCAContext *dca = avctx->priv_data;
    DCAExssAsset *asset = &dca->exss.assets[0];
    DCAXllChSet *p = &s->chset[0], *c;
    enum AVMatrixEncoding matrix_encoding = AV_MATRIX_ENCODING_NONE;
    int i, j, k, ret, shift, nsamples, request_mask;
    int ch_remap[DCA_SPEAKER_COUNT];

    // Force lossy downmixed output during recovery
    if (dca->packet & DCA_PACKET_RECOVERY) {
        for (i = 0, c = s->chset; i < s->nchsets; i++, c++) {
            if (i < s->nactivechsets)
                FUNC12(s, c);

            if (!c->primary_chset)
                c->dmix_embedded = 0;
        }

        s->scalable_lsbs = 0;
        s->fixed_lsb_width = 0;
    }

    // Filter frequency bands for active channel sets
    s->output_mask = 0;
    for (i = 0, c = s->chset; i < s->nactivechsets; i++, c++) {
        FUNC5(s, c, 0);

        if (c->residual_encode != (1 << c->nchannels) - 1
            && (ret = FUNC7(s, c)) < 0)
            return ret;

        if (s->scalable_lsbs)
            FUNC4(s, c, 0);

        if (c->nfreqbands > 1) {
            FUNC5(s, c, 1);
            FUNC4(s, c, 1);
        }

        s->output_mask |= c->ch_mask;
    }

    // Undo hierarchial downmix and/or apply scaling
    for (i = 1, c = &s->chset[1]; i < s->nchsets; i++, c++) {
        if (!FUNC13(c))
            continue;

        if (i >= s->nactivechsets) {
            for (j = 0; j < c->nfreqbands; j++)
                if (c->bands[j].dmix_embedded)
                    FUNC14(s, c, j);
            break;
        }

        for (j = 0; j < c->nfreqbands; j++)
            if (c->bands[j].dmix_embedded)
                FUNC15(s, c, j);
    }

    // Assemble frequency bands for active channel sets
    if (s->nfreqbands > 1) {
        for (i = 0; i < s->nactivechsets; i++)
            if ((ret = FUNC3(s, &s->chset[i])) < 0)
                return ret;
    }

    // Normalize to regular 5.1 layout if downmixing
    if (dca->request_channel_layout) {
        if (s->output_mask & DCA_SPEAKER_MASK_Lss) {
            s->output_samples[DCA_SPEAKER_Ls] = s->output_samples[DCA_SPEAKER_Lss];
            s->output_mask = (s->output_mask & ~DCA_SPEAKER_MASK_Lss) | DCA_SPEAKER_MASK_Ls;
        }
        if (s->output_mask & DCA_SPEAKER_MASK_Rss) {
            s->output_samples[DCA_SPEAKER_Rs] = s->output_samples[DCA_SPEAKER_Rss];
            s->output_mask = (s->output_mask & ~DCA_SPEAKER_MASK_Rss) | DCA_SPEAKER_MASK_Rs;
        }
    }

    // Handle downmixing to stereo request
    if (dca->request_channel_layout == DCA_SPEAKER_LAYOUT_STEREO
        && FUNC1(s->output_mask) && p->dmix_embedded
        && (p->dmix_type == DCA_DMIX_TYPE_LoRo ||
            p->dmix_type == DCA_DMIX_TYPE_LtRt))
        request_mask = DCA_SPEAKER_LAYOUT_STEREO;
    else
        request_mask = s->output_mask;
    if (!FUNC9(avctx, ch_remap, request_mask))
        return FUNC0(EINVAL);

    avctx->sample_rate = p->freq << (s->nfreqbands - 1);

    switch (p->storage_bit_res) {
    case 16:
        avctx->sample_fmt = AV_SAMPLE_FMT_S16P;
        shift = 16 - p->pcm_bit_res;
        break;
    case 20:
    case 24:
        avctx->sample_fmt = AV_SAMPLE_FMT_S32P;
        shift = 24 - p->pcm_bit_res;
        break;
    default:
        return FUNC0(EINVAL);
    }

    avctx->bits_per_raw_sample = p->storage_bit_res;
    avctx->profile = FF_PROFILE_DTS_HD_MA;
    avctx->bit_rate = 0;

    frame->nb_samples = nsamples = s->nframesamples << (s->nfreqbands - 1);
    if ((ret = FUNC10(avctx, frame, 0)) < 0)
        return ret;

    // Downmix primary channel set to stereo
    if (request_mask != s->output_mask) {
        FUNC8(s->dcadsp, s->output_samples,
                                       p->dmix_coeff, nsamples,
                                       s->output_mask);
    }

    for (i = 0; i < avctx->channels; i++) {
        int32_t *samples = s->output_samples[ch_remap[i]];
        if (frame->format == AV_SAMPLE_FMT_S16P) {
            int16_t *plane = (int16_t *)frame->extended_data[i];
            for (k = 0; k < nsamples; k++)
                plane[k] = FUNC2(samples[k] * (SUINT)(1 << shift));
        } else {
            int32_t *plane = (int32_t *)frame->extended_data[i];
            for (k = 0; k < nsamples; k++)
                plane[k] = FUNC6(samples[k] * (SUINT)(1 << shift)) * (1 << 8);
        }
    }

    if (!asset->one_to_one_map_ch_to_spkr) {
        if (asset->representation_type == DCA_REPR_TYPE_LtRt)
            matrix_encoding = AV_MATRIX_ENCODING_DOLBY;
        else if (asset->representation_type == DCA_REPR_TYPE_LhRh)
            matrix_encoding = AV_MATRIX_ENCODING_DOLBYHEADPHONE;
    } else if (request_mask != s->output_mask && p->dmix_type == DCA_DMIX_TYPE_LtRt) {
        matrix_encoding = AV_MATRIX_ENCODING_DOLBY;
    }
    if ((ret = FUNC11(frame, matrix_encoding)) < 0)
        return ret;

    return 0;
}