
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int* write; int** delay; float** ir; int* n_clippings; float** ringbuffer; float** temp_src; TYPE_5__* out; TYPE_5__* in; } ;
typedef TYPE_3__ ThreadData ;
struct TYPE_13__ {TYPE_4__* priv; } ;
struct TYPE_12__ {scalar_t__ format; int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_8__ {int ir_samples; int n_samples; } ;
struct TYPE_11__ {int n_conv; int buffer_length; int lfe_channel; float gain_lfe; TYPE_2__* fdsp; TYPE_1__ sofa; } ;
struct TYPE_9__ {scalar_t__ (* scalarproduct_float ) (float const*,float*,int ) ;} ;
typedef TYPE_4__ SOFAlizerContext ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterContext ;


 scalar_t__ AV_SAMPLE_FMT_FLTP ;
 int FFALIGN (int const,int) ;
 int FFMIN (int const,int const) ;
 int fabsf (float) ;
 int memmove (float*,float const* const,int const) ;
 scalar_t__ stub1 (float const*,float*,int ) ;

__attribute__((used)) static int sofalizer_convolute(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    SOFAlizerContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in, *out = td->out;
    int offset = jobnr;
    int *write = &td->write[jobnr];
    const int *const delay = td->delay[jobnr];
    const float *const ir = td->ir[jobnr];
    int *n_clippings = &td->n_clippings[jobnr];
    float *ringbuffer = td->ringbuffer[jobnr];
    float *temp_src = td->temp_src[jobnr];
    const int ir_samples = s->sofa.ir_samples;
    const int n_samples = s->sofa.n_samples;
    const int planar = in->format == AV_SAMPLE_FMT_FLTP;
    const int mult = 1 + !planar;
    const float *src = (const float *)in->extended_data[0];
    float *dst = (float *)out->extended_data[jobnr * planar];
    const int in_channels = s->n_conv;

    const int buffer_length = s->buffer_length;

    const uint32_t modulo = (uint32_t)buffer_length - 1;
    float *buffer[16];
    int wr = *write;
    int read;
    int i, l;

    if (!planar)
        dst += offset;

    for (l = 0; l < in_channels; l++) {

        buffer[l] = ringbuffer + l * buffer_length;
    }

    for (i = 0; i < in->nb_samples; i++) {
        const float *temp_ir = ir;

        dst[0] = 0;
        if (planar) {
            for (l = 0; l < in_channels; l++) {
                const float *srcp = (const float *)in->extended_data[l];


                buffer[l][wr] = srcp[i];
            }
        } else {
            for (l = 0; l < in_channels; l++) {

                buffer[l][wr] = src[l];
            }
        }


        for (l = 0; l < in_channels; l++) {
            const float *const bptr = buffer[l];

            if (l == s->lfe_channel) {


                dst[0] += *(buffer[s->lfe_channel] + wr) * s->gain_lfe;
                temp_ir += n_samples;
                continue;
            }




            read = (wr - delay[l] - (ir_samples - 1) + buffer_length) & modulo;

            if (read + ir_samples < buffer_length) {
                memmove(temp_src, bptr + read, ir_samples * sizeof(*temp_src));
            } else {
                int len = FFMIN(n_samples - (read % ir_samples), buffer_length - read);

                memmove(temp_src, bptr + read, len * sizeof(*temp_src));
                memmove(temp_src + len, bptr, (n_samples - len) * sizeof(*temp_src));
            }


            dst[0] += s->fdsp->scalarproduct_float(temp_ir, temp_src, FFALIGN(ir_samples, 32));
            temp_ir += n_samples;
        }


        if (fabsf(dst[0]) > 1)
            n_clippings[0]++;


        dst += mult;
        src += in_channels;
        wr = (wr + 1) & modulo;
    }

    *write = wr;

    return 0;
}
