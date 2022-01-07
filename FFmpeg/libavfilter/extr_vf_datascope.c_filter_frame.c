
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int text ;
struct TYPE_19__ {int yoff; int xoff; TYPE_4__* out; TYPE_4__* in; int member_0; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_23__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_22__ {int w; int h; TYPE_6__* dst; } ;
struct TYPE_21__ {int linesize; int data; int pts; } ;
struct TYPE_20__ {int nb_planes; int nb_comps; int chars; int y; int x; int filter; int yellow; int draw; int gray; scalar_t__ axis; int black; } ;
struct TYPE_18__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ DatascopeContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int FFMIN (int ,int) ;
 int av_frame_free (TYPE_4__**) ;
 int draw_text (int *,TYPE_4__*,int *,int,int,char*,int) ;
 int ff_fill_rectangle (int *,int *,int ,int ,int,int,int,int) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    DatascopeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td = { 0 };
    int ymaxlen = 0;
    int xmaxlen = 0;
    AVFrame *out;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    out->pts = in->pts;

    ff_fill_rectangle(&s->draw, &s->black, out->data, out->linesize,
                      0, 0, outlink->w, outlink->h);

    if (s->axis) {
        const int P = FFMAX(s->nb_planes, s->nb_comps);
        const int C = s->chars;
        int Y = outlink->h / (P * 12);
        int X = outlink->w / (C * 10);
        char text[256] = { 0 };
        int x, y;

        snprintf(text, sizeof(text), "%d", s->y + Y);
        ymaxlen = strlen(text);
        ymaxlen *= 10;
        snprintf(text, sizeof(text), "%d", s->x + X);
        xmaxlen = strlen(text);
        xmaxlen *= 10;

        Y = (outlink->h - xmaxlen) / (P * 12);
        X = (outlink->w - ymaxlen) / (C * 10);

        for (y = 0; y < Y; y++) {
            snprintf(text, sizeof(text), "%d", s->y + y);

            ff_fill_rectangle(&s->draw, &s->gray, out->data, out->linesize,
                              0, xmaxlen + y * P * 12 + (P + 1) * P - 2, ymaxlen, 10);

            draw_text(&s->draw, out, &s->yellow, 2, xmaxlen + y * P * 12 + (P + 1) * P, text, 0);
        }

        for (x = 0; x < X; x++) {
            snprintf(text, sizeof(text), "%d", s->x + x);

            ff_fill_rectangle(&s->draw, &s->gray, out->data, out->linesize,
                              ymaxlen + x * C * 10 + 2 * C - 2, 0, 10, xmaxlen);

            draw_text(&s->draw, out, &s->yellow, ymaxlen + x * C * 10 + 2 * C, 2, text, 1);
        }
    }

    td.in = in; td.out = out, td.yoff = xmaxlen, td.xoff = ymaxlen;
    ctx->internal->execute(ctx, s->filter, &td, ((void*)0), FFMIN(ff_filter_get_nb_threads(ctx), FFMAX(outlink->w / 20, 1)));

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
