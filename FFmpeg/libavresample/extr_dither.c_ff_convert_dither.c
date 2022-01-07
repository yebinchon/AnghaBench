
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_15__ {scalar_t__ sample_fmt; int nb_samples; int channels; scalar_t__ data; int samples_align; int ptr_align; } ;
struct TYPE_13__ {int samples_align; int ptr_align; int quantize; } ;
struct TYPE_14__ {scalar_t__ method; int samples_align; TYPE_3__* s16_data; int ac_out; int quantize; TYPE_1__ ddsp; int ch_map_info; scalar_t__ apply_map; int ac_in; TYPE_3__* flt_data; } ;
typedef TYPE_2__ DitherContext ;
typedef TYPE_3__ AudioData ;


 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_NS ;
 scalar_t__ AV_SAMPLE_FMT_FLTP ;
 scalar_t__ AV_SAMPLE_FMT_S16 ;
 scalar_t__ AV_SAMPLE_FMT_S16P ;
 int FFALIGN (int ,int) ;
 int FFMIN (int ,int ) ;
 int convert_samples (TYPE_2__*,int **,float* const*,int ,int ) ;
 int ff_audio_convert (int ,TYPE_3__*,TYPE_3__*) ;
 int ff_audio_data_copy (TYPE_3__*,TYPE_3__*,int ) ;
 int ff_audio_data_realloc (TYPE_3__*,int ) ;
 int quantize_c ;

int ff_convert_dither(DitherContext *c, AudioData *dst, AudioData *src)
{
    int ret;
    AudioData *flt_data;


    if (dst->sample_fmt == AV_SAMPLE_FMT_S16P)
        c->s16_data = dst;
    else {

        ret = ff_audio_data_realloc(c->s16_data, src->nb_samples);
        if (ret < 0)
            return ret;
    }

    if (src->sample_fmt != AV_SAMPLE_FMT_FLTP || c->apply_map) {

        ret = ff_audio_data_realloc(c->flt_data, src->nb_samples);
        if (ret < 0)
            return ret;
        flt_data = c->flt_data;
    }

    if (src->sample_fmt != AV_SAMPLE_FMT_FLTP) {

        ret = ff_audio_convert(c->ac_in, flt_data, src);
        if (ret < 0)
            return ret;
    } else if (c->apply_map) {
        ret = ff_audio_data_copy(flt_data, src, c->ch_map_info);
        if (ret < 0)
            return ret;
    } else {
        flt_data = src;
    }


    if (c->method != AV_RESAMPLE_DITHER_TRIANGULAR_NS) {
        int ptr_align = FFMIN(flt_data->ptr_align, c->s16_data->ptr_align);
        int samples_align = FFMIN(flt_data->samples_align, c->s16_data->samples_align);
        int aligned_len = FFALIGN(src->nb_samples, c->ddsp.samples_align);

        if (!(ptr_align % c->ddsp.ptr_align) && samples_align >= aligned_len) {
            c->quantize = c->ddsp.quantize;
            c->samples_align = c->ddsp.samples_align;
        } else {
            c->quantize = quantize_c;
            c->samples_align = 1;
        }
    }

    ret = convert_samples(c, (int16_t **)c->s16_data->data,
                          (float * const *)flt_data->data, src->channels,
                          src->nb_samples);
    if (ret < 0)
        return ret;

    c->s16_data->nb_samples = src->nb_samples;


    if (dst->sample_fmt == AV_SAMPLE_FMT_S16) {
        ret = ff_audio_convert(c->ac_out, dst, c->s16_data);
        if (ret < 0)
            return ret;
    } else
        c->s16_data = ((void*)0);

    return 0;
}
