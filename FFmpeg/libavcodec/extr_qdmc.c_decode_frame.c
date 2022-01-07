
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_14__ {float re; float im; } ;
struct TYPE_13__ {int (* fft_calc ) (TYPE_2__*,TYPE_3__*) ;int (* fft_permute ) (TYPE_2__*,TYPE_3__*) ;} ;
struct TYPE_12__ {int fft_offset; int frame_size; float* buffer_ptr; float* buffer; size_t nb_channels; size_t buffer_offset; int subframe_size; float** fft_buffer; TYPE_3__** cmplx; TYPE_2__ fft_ctx; } ;
typedef TYPE_1__ QDMCContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int INT16_MAX ;
 int INT16_MIN ;
 int add_noise (TYPE_1__*,int,int) ;
 int add_waves (TYPE_1__*,int) ;
 int av_clipf (float,int ,int ) ;
 int memcpy (float*,float*,int) ;
 int memset (float*,int ,int) ;
 int read_noise_data (TYPE_1__*,int *) ;
 int read_wave_data (TYPE_1__*,int *) ;
 scalar_t__ skip_label (TYPE_1__*,int *) ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;
 int stub2 (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int decode_frame(QDMCContext *s, GetBitContext *gb, int16_t *out)
{
    int ret, ch, i, n;

    if (skip_label(s, gb))
        return AVERROR_INVALIDDATA;

    s->fft_offset = s->frame_size - s->fft_offset;
    s->buffer_ptr = &s->buffer[s->nb_channels * s->buffer_offset];

    ret = read_noise_data(s, gb);
    if (ret < 0)
        return ret;

    ret = read_wave_data(s, gb);
    if (ret < 0)
        return ret;

    for (n = 0; n < 32; n++) {
        float *r;

        for (ch = 0; ch < s->nb_channels; ch++)
            add_noise(s, ch, n);

        add_waves(s, n);

        for (ch = 0; ch < s->nb_channels; ch++) {
            for (i = 0; i < s->subframe_size; i++) {
                s->cmplx[ch][i].re = s->fft_buffer[ch + 2][s->fft_offset + n * s->subframe_size + i];
                s->cmplx[ch][i].im = s->fft_buffer[ch + 0][s->fft_offset + n * s->subframe_size + i];
                s->cmplx[ch][s->subframe_size + i].re = 0;
                s->cmplx[ch][s->subframe_size + i].im = 0;
            }
        }

        for (ch = 0; ch < s->nb_channels; ch++) {
            s->fft_ctx.fft_permute(&s->fft_ctx, s->cmplx[ch]);
            s->fft_ctx.fft_calc(&s->fft_ctx, s->cmplx[ch]);
        }

        r = &s->buffer_ptr[s->nb_channels * n * s->subframe_size];
        for (i = 0; i < 2 * s->subframe_size; i++) {
            for (ch = 0; ch < s->nb_channels; ch++) {
                *r++ += s->cmplx[ch][i].re;
            }
        }

        r = &s->buffer_ptr[n * s->subframe_size * s->nb_channels];
        for (i = 0; i < s->nb_channels * s->subframe_size; i++) {
            out[i] = av_clipf(r[i], INT16_MIN, INT16_MAX);
        }
        out += s->subframe_size * s->nb_channels;

        for (ch = 0; ch < s->nb_channels; ch++) {
            memset(s->fft_buffer[ch+0] + s->fft_offset + n * s->subframe_size, 0, 4 * s->subframe_size);
            memset(s->fft_buffer[ch+2] + s->fft_offset + n * s->subframe_size, 0, 4 * s->subframe_size);
        }
        memset(s->buffer + s->nb_channels * (n * s->subframe_size + s->frame_size + s->buffer_offset), 0, 4 * s->subframe_size * s->nb_channels);
    }

    s->buffer_offset += s->frame_size;
    if (s->buffer_offset >= 32768 - s->frame_size) {
        memcpy(s->buffer, &s->buffer[s->nb_channels * s->buffer_offset], 4 * s->frame_size * s->nb_channels);
        s->buffer_offset = 0;
    }

    return 0;
}
