
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


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_11__ {int* in_linesize; int in_ss_h; int* out_linesize; int out_ss_h; TYPE_2__* out; TYPE_1__* in; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_13__ {TYPE_5__* priv; } ;
struct TYPE_10__ {int (* multiply3x3 ) (int **,int,int,int,int ) ;} ;
struct TYPE_12__ {int rgb_stride; scalar_t__ dither; int * yuv_offset; int rgb2yuv_coeffs; int (* rgb2yuv ) (int **,int*,int **,int,int,int,int ,int ) ;int dither_scratch; int (* rgb2yuv_fsb ) (int **,int*,int **,int,int,int,int ,int ,int ) ;int delin_lut; int lrgb2lrgb_coeffs; TYPE_3__ dsp; int lrgb2lrgb_passthrough; int lin_lut; int rgb2rgb_passthrough; int yuv2rgb_coeffs; int (* yuv2rgb ) (int **,int,int **,int*,int,int,int ,int ) ;int yuv2yuv_coeffs; int (* yuv2yuv ) (int **,int*,int **,int*,int,int,int ,int *) ;scalar_t__ yuv2yuv_fastmode; int ** rgb; } ;
struct TYPE_9__ {int ** data; } ;
struct TYPE_8__ {int height; int width; int ** data; } ;
typedef TYPE_5__ ColorSpaceContext ;
typedef TYPE_6__ AVFilterContext ;


 scalar_t__ DITHER_FSB ;
 int apply_lut (int **,int,int,int,int ) ;
 int stub1 (int **,int*,int **,int*,int,int,int ,int *) ;
 int stub2 (int **,int,int **,int*,int,int,int ,int ) ;
 int stub3 (int **,int,int,int,int ) ;
 int stub4 (int **,int*,int **,int,int,int,int ,int ,int ) ;
 int stub5 (int **,int*,int **,int,int,int,int ,int ) ;

__attribute__((used)) static int convert(AVFilterContext *ctx, void *data, int job_nr, int n_jobs)
{
    const ThreadData *td = data;
    ColorSpaceContext *s = ctx->priv;
    uint8_t *in_data[3], *out_data[3];
    int16_t *rgb[3];
    int h_in = (td->in->height + 1) >> 1;
    int h1 = 2 * (job_nr * h_in / n_jobs), h2 = 2 * ((job_nr + 1) * h_in / n_jobs);
    int w = td->in->width, h = h2 - h1;

    in_data[0] = td->in->data[0] + td->in_linesize[0] * h1;
    in_data[1] = td->in->data[1] + td->in_linesize[1] * (h1 >> td->in_ss_h);
    in_data[2] = td->in->data[2] + td->in_linesize[2] * (h1 >> td->in_ss_h);
    out_data[0] = td->out->data[0] + td->out_linesize[0] * h1;
    out_data[1] = td->out->data[1] + td->out_linesize[1] * (h1 >> td->out_ss_h);
    out_data[2] = td->out->data[2] + td->out_linesize[2] * (h1 >> td->out_ss_h);
    rgb[0] = s->rgb[0] + s->rgb_stride * h1;
    rgb[1] = s->rgb[1] + s->rgb_stride * h1;
    rgb[2] = s->rgb[2] + s->rgb_stride * h1;





    if (s->yuv2yuv_fastmode) {



        s->yuv2yuv(out_data, td->out_linesize, in_data, td->in_linesize, w, h,
                   s->yuv2yuv_coeffs, s->yuv_offset);
    } else {
        s->yuv2rgb(rgb, s->rgb_stride, in_data, td->in_linesize, w, h,
                   s->yuv2rgb_coeffs, s->yuv_offset[0]);
        if (!s->rgb2rgb_passthrough) {
            apply_lut(rgb, s->rgb_stride, w, h, s->lin_lut);
            if (!s->lrgb2lrgb_passthrough)
                s->dsp.multiply3x3(rgb, s->rgb_stride, w, h, s->lrgb2lrgb_coeffs);
            apply_lut(rgb, s->rgb_stride, w, h, s->delin_lut);
        }
        if (s->dither == DITHER_FSB) {
            s->rgb2yuv_fsb(out_data, td->out_linesize, rgb, s->rgb_stride, w, h,
                           s->rgb2yuv_coeffs, s->yuv_offset[1], s->dither_scratch);
        } else {
            s->rgb2yuv(out_data, td->out_linesize, rgb, s->rgb_stride, w, h,
                       s->rgb2yuv_coeffs, s->yuv_offset[1]);
        }
    }

    return 0;
}
