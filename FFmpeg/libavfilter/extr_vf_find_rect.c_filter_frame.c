
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int * outputs; TYPE_2__* priv; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {int metadata; } ;
struct TYPE_14__ {int mipmaps; int last_x; int last_y; float threshold; TYPE_1__* obj_frame; int * haystack_frame; int ymax; int ymin; int xmax; int xmin; } ;
struct TYPE_13__ {int width; int height; } ;
typedef TYPE_2__ FOCContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AV_LOG_DEBUG ;
 int FFMAX (int ,int) ;
 int FFMIN (int ,int) ;
 int MAX_MIPMAPS ;
 int av_dict_set_int (int *,char*,int,int ) ;
 int av_frame_clone (TYPE_3__*) ;
 int av_frame_free (int *) ;
 int av_frame_make_writable (TYPE_3__*) ;
 int av_log (TYPE_5__*,int ,char*,int,int,float) ;
 int downscale (int ) ;
 int ff_filter_frame (int ,TYPE_3__*) ;
 float search (TYPE_2__*,int ,int,int ,int ,int ,int ,int*,int*,float) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    FOCContext *foc = ctx->priv;
    float best_score;
    int best_x, best_y;
    int i;

    foc->haystack_frame[0] = av_frame_clone(in);
    for (i=1; i<foc->mipmaps; i++) {
        foc->haystack_frame[i] = downscale(foc->haystack_frame[i-1]);
    }

    best_score = search(foc, 0, 0,
                        FFMAX(foc->xmin, foc->last_x - 8),
                        FFMIN(foc->xmax, foc->last_x + 8),
                        FFMAX(foc->ymin, foc->last_y - 8),
                        FFMIN(foc->ymax, foc->last_y + 8),
                        &best_x, &best_y, 1.0);

    best_score = search(foc, 0, foc->mipmaps - 1, foc->xmin, foc->xmax, foc->ymin, foc->ymax,
                        &best_x, &best_y, best_score);

    for (i=0; i<MAX_MIPMAPS; i++) {
        av_frame_free(&foc->haystack_frame[i]);
    }

    if (best_score > foc->threshold) {
        return ff_filter_frame(ctx->outputs[0], in);
    }

    av_log(ctx, AV_LOG_DEBUG, "Found at %d %d score %f\n", best_x, best_y, best_score);
    foc->last_x = best_x;
    foc->last_y = best_y;

    av_frame_make_writable(in);

    av_dict_set_int(&in->metadata, "lavfi.rect.w", foc->obj_frame->width, 0);
    av_dict_set_int(&in->metadata, "lavfi.rect.h", foc->obj_frame->height, 0);
    av_dict_set_int(&in->metadata, "lavfi.rect.x", best_x, 0);
    av_dict_set_int(&in->metadata, "lavfi.rect.y", best_y, 0);

    return ff_filter_frame(ctx->outputs[0], in);
}
