
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * out; int * in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_18__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_17__ {int h; int w; TYPE_6__* dst; } ;
struct TYPE_16__ {int rand_shift_init; int flags; int* rand_shift; int lfg; scalar_t__ strength; } ;
struct TYPE_15__ {int * height; TYPE_4__* param; } ;
struct TYPE_13__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ NoiseContext ;
typedef TYPE_4__ FilterParams ;
typedef int AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int MAX_RES ;
 int MAX_SHIFT ;
 int NOISE_TEMPORAL ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_is_writable (int *) ;
 int av_lfg_get (int *) ;
 int emms_c () ;
 int ff_filter_frame (TYPE_5__*,int *) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 int * ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int filter_slice ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    NoiseContext *n = ctx->priv;
    ThreadData td;
    AVFrame *out;
    int comp, i;

    if (av_frame_is_writable(inpicref)) {
        out = inpicref;
    } else {
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&inpicref);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, inpicref);
    }

    for (comp = 0; comp < 4; comp++) {
        FilterParams *fp = &n->param[comp];

        if ((!fp->rand_shift_init || (fp->flags & NOISE_TEMPORAL)) && fp->strength) {

            for (i = 0; i < MAX_RES; i++) {
                fp->rand_shift[i] = av_lfg_get(&fp->lfg) & (MAX_SHIFT - 1);
            }
            fp->rand_shift_init = 1;
        }
    }

    td.in = inpicref; td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), FFMIN(n->height[0], ff_filter_get_nb_threads(ctx)));
    emms_c();

    if (inpicref != out)
        av_frame_free(&inpicref);
    return ff_filter_frame(outlink, out);
}
