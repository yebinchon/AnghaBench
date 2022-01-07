
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int* write; int* n_clippings; float** ringbuffer; TYPE_5__* out; TYPE_5__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_16__ {TYPE_3__* priv; } ;
struct TYPE_15__ {scalar_t__ format; int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_14__ {float re; float im; } ;
struct TYPE_11__ {int ir_samples; } ;
struct TYPE_13__ {int n_conv; int buffer_length; int n_fft; int lfe_channel; float const gain_lfe; int ** fft; int ** ifft; TYPE_4__** temp_afft; TYPE_4__** temp_fft; TYPE_1__ sofa; TYPE_4__** data_hrtf; } ;
typedef TYPE_3__ SOFAlizerContext ;
typedef int FFTContext ;
typedef TYPE_4__ FFTComplex ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterContext ;


 scalar_t__ AV_SAMPLE_FMT_FLT ;
 scalar_t__ AV_SAMPLE_FMT_FLTP ;
 int FFMIN (int const,int) ;
 int av_fft_calc (int *,TYPE_4__*) ;
 int av_fft_permute (int *,TYPE_4__*) ;
 int fabsf (float) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static int sofalizer_fast_convolute(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    SOFAlizerContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in, *out = td->out;
    int offset = jobnr;
    int *write = &td->write[jobnr];
    FFTComplex *hrtf = s->data_hrtf[jobnr];
    int *n_clippings = &td->n_clippings[jobnr];
    float *ringbuffer = td->ringbuffer[jobnr];
    const int ir_samples = s->sofa.ir_samples;
    const int planar = in->format == AV_SAMPLE_FMT_FLTP;
    const int mult = 1 + !planar;
    float *dst = (float *)out->extended_data[jobnr * planar];
    const int in_channels = s->n_conv;

    const int buffer_length = s->buffer_length;

    const uint32_t modulo = (uint32_t)buffer_length - 1;
    FFTComplex *fft_in = s->temp_fft[jobnr];
    FFTComplex *fft_acc = s->temp_afft[jobnr];
    FFTContext *ifft = s->ifft[jobnr];
    FFTContext *fft = s->fft[jobnr];
    const int n_conv = s->n_conv;
    const int n_fft = s->n_fft;
    const float fft_scale = 1.0f / s->n_fft;
    FFTComplex *hrtf_offset;
    int wr = *write;
    int n_read;
    int i, j;

    if (!planar)
        dst += offset;



    n_read = FFMIN(ir_samples, in->nb_samples);
    for (j = 0; j < n_read; j++) {

        dst[mult * j] = ringbuffer[wr];
        ringbuffer[wr] = 0.0f;

        wr = (wr + 1) & modulo;
    }


    for (j = n_read; j < in->nb_samples; j++) {
        dst[mult * j] = 0;
    }


    memset(fft_acc, 0, sizeof(FFTComplex) * n_fft);

    for (i = 0; i < n_conv; i++) {
        const float *src = (const float *)in->extended_data[i * planar];

        if (i == s->lfe_channel) {
            if (in->format == AV_SAMPLE_FMT_FLT) {
                for (j = 0; j < in->nb_samples; j++) {

                    dst[2 * j] += src[i + j * in_channels] * s->gain_lfe;
                }
            } else {
                for (j = 0; j < in->nb_samples; j++) {

                    dst[j] += src[j] * s->gain_lfe;
                }
            }
            continue;
        }


        offset = i * n_fft;
        hrtf_offset = hrtf + offset;


        memset(fft_in, 0, sizeof(FFTComplex) * n_fft);

        if (in->format == AV_SAMPLE_FMT_FLT) {
            for (j = 0; j < in->nb_samples; j++) {


                fft_in[j].re = src[j * in_channels + i];
            }
        } else {
            for (j = 0; j < in->nb_samples; j++) {


                fft_in[j].re = src[j];
            }
        }


        av_fft_permute(fft, fft_in);
        av_fft_calc(fft, fft_in);
        for (j = 0; j < n_fft; j++) {
            const FFTComplex *hcomplex = hrtf_offset + j;
            const float re = fft_in[j].re;
            const float im = fft_in[j].im;



            fft_acc[j].re += re * hcomplex->re - im * hcomplex->im;

            fft_acc[j].im += re * hcomplex->im + im * hcomplex->re;
        }
    }


    av_fft_permute(ifft, fft_acc);
    av_fft_calc(ifft, fft_acc);

    for (j = 0; j < in->nb_samples; j++) {

        dst[mult * j] += fft_acc[j].re * fft_scale;
    }

    for (j = 0; j < ir_samples - 1; j++) {

        int write_pos = (wr + j) & modulo;

        *(ringbuffer + write_pos) += fft_acc[in->nb_samples + j].re * fft_scale;
    }


    for (i = 0; i < out->nb_samples; i++) {

        if (fabsf(dst[i * mult]) > 1) {
            n_clippings[0]++;
        }
    }


    *write = wr;

    return 0;
}
