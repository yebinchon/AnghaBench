
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current; scalar_t__ nb_frames; scalar_t__ overlap; int * out_ref; int prev_out_ref; } ;
typedef TYPE_1__ TileContext ;
struct TYPE_6__ {int ** outputs; TYPE_1__* priv; } ;
typedef int AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int av_frame_clone (int *) ;
 int av_frame_free (int *) ;
 int draw_blank_frame (TYPE_2__*,int *) ;
 int ff_filter_frame (int *,int *) ;

__attribute__((used)) static int end_last_frame(AVFilterContext *ctx)
{
    TileContext *tile = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out_buf = tile->out_ref;
    int ret;

    while (tile->current < tile->nb_frames)
        draw_blank_frame(ctx, out_buf);
    tile->current = tile->overlap;
    if (tile->current) {
        av_frame_free(&tile->prev_out_ref);
        tile->prev_out_ref = av_frame_clone(out_buf);
    }
    ret = ff_filter_frame(outlink, out_buf);
    tile->out_ref = ((void*)0);
    return ret;
}
