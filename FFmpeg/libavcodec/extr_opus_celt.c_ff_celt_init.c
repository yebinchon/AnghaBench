
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int output_channels; int apply_phase_inv; int opusdsp; int dsp; int pvq; int * imdct; TYPE_2__* avctx; } ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG_BITEXACT ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (int *) ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 TYPE_1__* av_mallocz (int) ;
 int avpriv_float_dsp_alloc (int) ;
 int ff_celt_flush (TYPE_1__*) ;
 int ff_celt_free (TYPE_1__**) ;
 int ff_celt_pvq_init (int *,int ) ;
 int ff_mdct15_init (int *,int,int,float) ;
 int ff_opus_dsp_init (int *) ;

int ff_celt_init(AVCodecContext *avctx, CeltFrame **f, int output_channels,
                 int apply_phase_inv)
{
    CeltFrame *frm;
    int i, ret;

    if (output_channels != 1 && output_channels != 2) {
        av_log(avctx, AV_LOG_ERROR, "Invalid number of output channels: %d\n",
               output_channels);
        return AVERROR(EINVAL);
    }

    frm = av_mallocz(sizeof(*frm));
    if (!frm)
        return AVERROR(ENOMEM);

    frm->avctx = avctx;
    frm->output_channels = output_channels;
    frm->apply_phase_inv = apply_phase_inv;

    for (i = 0; i < FF_ARRAY_ELEMS(frm->imdct); i++)
        if ((ret = ff_mdct15_init(&frm->imdct[i], 1, i + 3, -1.0f/32768)) < 0)
            goto fail;

    if ((ret = ff_celt_pvq_init(&frm->pvq, 0)) < 0)
        goto fail;

    frm->dsp = avpriv_float_dsp_alloc(avctx->flags & AV_CODEC_FLAG_BITEXACT);
    if (!frm->dsp) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ff_opus_dsp_init(&frm->opusdsp);
    ff_celt_flush(frm);

    *f = frm;

    return 0;
fail:
    ff_celt_free(&frm);
    return ret;
}
