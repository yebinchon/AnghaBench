
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_25__ {int frame_count_out; int h; int w; TYPE_4__* dst; } ;
struct TYPE_24__ {int * data; int height; int width; } ;
struct TYPE_23__ {int (* set_frame ) (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int) ;scalar_t__ calc_mean_err; int palette; int last_in; int last_out; int diff_mode; } ;
typedef TYPE_1__ PaletteUseContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVPALETTE_SIZE ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 scalar_t__ av_frame_make_writable (int ) ;
 scalar_t__ av_frame_ref (int ,TYPE_2__*) ;
 int av_frame_unref (int ) ;
 int debug_mean_error (TYPE_1__*,TYPE_2__*,TYPE_2__*,int ) ;
 int ff_dlog (TYPE_4__*,char*,int,int,int,int,int,int,int ,int ) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int set_processing_window (int ,int ,TYPE_2__*,int ,TYPE_2__*,int*,int*,int*,int*) ;
 int stub1 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int) ;

__attribute__((used)) static int apply_palette(AVFilterLink *inlink, AVFrame *in, AVFrame **outf)
{
    int x, y, w, h, ret;
    AVFilterContext *ctx = inlink->dst;
    PaletteUseContext *s = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];

    AVFrame *out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        *outf = ((void*)0);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    set_processing_window(s->diff_mode, s->last_in, in,
                          s->last_out, out, &x, &y, &w, &h);
    av_frame_unref(s->last_in);
    av_frame_unref(s->last_out);
    if (av_frame_ref(s->last_in, in) < 0 ||
        av_frame_ref(s->last_out, out) < 0 ||
        av_frame_make_writable(s->last_in) < 0) {
        av_frame_free(&in);
        av_frame_free(&out);
        *outf = ((void*)0);
        return AVERROR(ENOMEM);
    }

    ff_dlog(ctx, "%dx%d rect: (%d;%d) -> (%d,%d) [area:%dx%d]\n",
            w, h, x, y, x+w, y+h, in->width, in->height);

    ret = s->set_frame(s, out, in, x, y, w, h);
    if (ret < 0) {
        av_frame_free(&out);
        *outf = ((void*)0);
        return ret;
    }
    memcpy(out->data[1], s->palette, AVPALETTE_SIZE);
    if (s->calc_mean_err)
        debug_mean_error(s, in, out, inlink->frame_count_out);
    av_frame_free(&in);
    *outf = out;
    return 0;
}
