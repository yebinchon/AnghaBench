
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_32__ {int plane; int n; int * vdata; int * hdata; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_36__ {TYPE_1__* internal; TYPE_4__* priv; int ** outputs; } ;
struct TYPE_35__ {int* linesize; scalar_t__* data; } ;
struct TYPE_34__ {int nb_planes; int* fft_len; int* planewidth; int* planeheight; int planes; int* got_impulse; int depth; int ** fft_hdata; int ** fft_vdata; int filter; int ** fft_vdata_impulse; int ** fft_hdata_impulse; scalar_t__ impulse; } ;
struct TYPE_33__ {TYPE_6__* parent; } ;
struct TYPE_31__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef int FFTComplex ;
typedef TYPE_3__ FFFrameSync ;
typedef TYPE_4__ ConvolveContext ;
typedef TYPE_5__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 float FFMAX (int,float) ;
 int FFMIN3 (int ,int const,int ) ;
 int MAX_THREADS ;
 int ff_filter_frame (int *,TYPE_5__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 int ff_framesync_dualinput_get (TYPE_3__*,TYPE_5__**,TYPE_5__**) ;
 int fft_horizontal ;
 int fft_vertical ;
 int get_input (TYPE_4__*,int *,TYPE_5__*,int const,int const,int const,int,float) ;
 int get_output (TYPE_4__*,int *,TYPE_5__*,int const,int const,int const,int,float) ;
 int ifft_horizontal ;
 int ifft_vertical ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub2 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub3 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub4 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub5 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub6 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub7 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int do_convolve(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *outlink = ctx->outputs[0];
    ConvolveContext *s = ctx->priv;
    AVFrame *mainpic = ((void*)0), *impulsepic = ((void*)0);
    int ret, y, x, plane;

    ret = ff_framesync_dualinput_get(fs, &mainpic, &impulsepic);
    if (ret < 0)
        return ret;
    if (!impulsepic)
        return ff_filter_frame(outlink, mainpic);

    for (plane = 0; plane < s->nb_planes; plane++) {
        FFTComplex *filter = s->fft_vdata_impulse[plane];
        FFTComplex *input = s->fft_vdata[plane];
        const int n = s->fft_len[plane];
        const int w = s->planewidth[plane];
        const int h = s->planeheight[plane];
        float total = 0;
        ThreadData td;

        if (!(s->planes & (1 << plane))) {
            continue;
        }

        td.plane = plane, td.n = n;
        get_input(s, s->fft_hdata[plane], mainpic, w, h, n, plane, 1.f);

        td.hdata = s->fft_hdata[plane];
        td.vdata = s->fft_vdata[plane];

        ctx->internal->execute(ctx, fft_horizontal, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));
        ctx->internal->execute(ctx, fft_vertical, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));

        if ((!s->impulse && !s->got_impulse[plane]) || s->impulse) {
            if (s->depth == 8) {
                for (y = 0; y < h; y++) {
                    const uint8_t *src = (const uint8_t *)(impulsepic->data[plane] + y * impulsepic->linesize[plane]) ;
                    for (x = 0; x < w; x++) {
                        total += src[x];
                    }
                }
            } else {
                for (y = 0; y < h; y++) {
                    const uint16_t *src = (const uint16_t *)(impulsepic->data[plane] + y * impulsepic->linesize[plane]) ;
                    for (x = 0; x < w; x++) {
                        total += src[x];
                    }
                }
            }
            total = FFMAX(1, total);

            get_input(s, s->fft_hdata_impulse[plane], impulsepic, w, h, n, plane, 1.f / total);

            td.hdata = s->fft_hdata_impulse[plane];
            td.vdata = s->fft_vdata_impulse[plane];

            ctx->internal->execute(ctx, fft_horizontal, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));
            ctx->internal->execute(ctx, fft_vertical, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));

            s->got_impulse[plane] = 1;
        }

        td.hdata = input;
        td.vdata = filter;

        ctx->internal->execute(ctx, s->filter, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));

        td.hdata = s->fft_hdata[plane];
        td.vdata = s->fft_vdata[plane];

        ctx->internal->execute(ctx, ifft_vertical, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));
        ctx->internal->execute(ctx, ifft_horizontal, &td, ((void*)0), FFMIN3(MAX_THREADS, n, ff_filter_get_nb_threads(ctx)));

        get_output(s, s->fft_hdata[plane], mainpic, w, h, n, plane, 1.f / (n * n));
    }

    return ff_filter_frame(outlink, mainpic);
}
